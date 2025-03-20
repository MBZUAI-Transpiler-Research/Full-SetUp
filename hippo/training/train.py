#!/usr/bin/env python
# coding=utf-8
# Copyright The HuggingFace Team and The HuggingFace Inc. team. All rights reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
"""
Fine-tuning a 🤗 Transformers model on text translation.
"""
# You can also adapt this script on your own text translation task. Pointers for this are left as comments.
import evaluate
from arguments import parse_args
from evaluation import eval_model
import sys
import json
import logging
import math
import os
import random
from pathlib import Path
import wandb
import re
import shutil

import datasets
import numpy as np
import torch
from datasets import load_dataset
from torch.utils.data import DataLoader
from tqdm.auto import tqdm

import transformers
from accelerate import Accelerator
from accelerate.logging import get_logger
from accelerate.utils import set_seed
from huggingface_hub import Repository
from transformers import (
    CONFIG_MAPPING,
    AutoConfig,
    BartTokenizer,
    AutoModelForSeq2SeqLM,
    AutoTokenizer,
    DataCollatorForSeq2Seq,
    MBartTokenizer,
    MBartTokenizerFast,
    SchedulerType,
    default_data_collator,
    get_scheduler,
)
from transformers.utils import check_min_version, get_full_repo_name, send_example_telemetry
from transformers.utils.versions import require_version


# Will error if the minimal version of Transformers is not installed. Remove at your own risks.
# check_min_version("4.26.0.dev0")
logger = get_logger(__name__)
require_version("datasets>=1.8.0", "To fix: pip install -r examples/pytorch/translation/requirements.txt")

def should_save_model(completed_steps, checkpointing_steps): 
    return completed_steps % checkpointing_steps == 0


def train_model(args, accelerator, logger, model, tokenizer, optimizer, lr_scheduler, metric, gen_kwargs, train_dataloader, eval_dataloader):
    # Only show the progress bar once on each machine.
    progress_bar = tqdm(range(args.max_train_steps), disable=not accelerator.is_local_main_process)
    completed_steps = 0
    starting_epoch = 0

    # Potentially load in the weights and states from a previous save
    if args.resume_from_checkpoint:
        if args.resume_from_checkpoint is not None or args.resume_from_checkpoint != "":
            accelerator.print(f"Resumed from checkpoint: {args.resume_from_checkpoint}")
            path = os.path.basename(args.resume_from_checkpoint)
            accelerator.load_state(args.resume_from_checkpoint)
        else:
            # Get the most recent checkpoint
            dirs = [f.name for f in os.scandir(os.getcwd()) if f.is_dir()]
            dirs.sort(key=os.path.getctime)
            path = dirs[-1]  # Sorts folders by date modified, most recent checkpoint is the last
        # Extract `epoch_{i}` or `step_{i}`
        training_difference = os.path.splitext(path)[0]

        if "epoch" in training_difference:
            starting_epoch = int(training_difference.replace("epoch_", "")) + 1
            resume_step = None
        else:
            # need to multiply `gradient_accumulation_steps` to reflect real steps
            resume_step = int(training_difference.replace("step_", "")) * args.gradient_accumulation_steps
            starting_epoch = resume_step // len(train_dataloader)
            resume_step -= starting_epoch * len(train_dataloader)

    # update the progress_bar if load from checkpoint
    progress_bar.update(starting_epoch * args.num_update_steps_per_epoch)
    completed_steps = starting_epoch * args.num_update_steps_per_epoch

    for epoch in range(starting_epoch, args.num_train_epochs):
        model.train()
        if args.with_tracking:
            total_loss = 0
        for step, batch in enumerate(train_dataloader):
            # We need to skip steps until we reach the resumed step
            if args.resume_from_checkpoint and epoch == starting_epoch:
                if resume_step is not None and step < resume_step:
                    if step % args.gradient_accumulation_steps == 0:
                        progress_bar.update(1)
                        completed_steps += 1
                    continue
            outputs = model(**batch)
            loss = outputs.loss
            
            # We keep track of the loss at each epoch
            if args.with_tracking:
                total_loss += loss.detach().float()
                accelerator.log(
                    {
                        'train_loss': loss,
                        'learning_rate[0]': lr_scheduler.get_last_lr()[0]
                    },
                    step=completed_steps,
                )
            loss = loss / args.gradient_accumulation_steps
            accelerator.backward(loss)
            if step % args.gradient_accumulation_steps == 0 or step == len(train_dataloader) - 1:
                if accelerator.sync_gradients and args.clip_gradients:
                    accelerator.clip_grad_norm_(model.parameters(), 1.0)
                optimizer.step()
                lr_scheduler.step()
                optimizer.zero_grad()
                progress_bar.update(1)
                completed_steps += 1

            if isinstance(args.checkpointing_steps, int):
                if should_save_model(completed_steps, args.checkpointing_steps): #, loss.item(), best_losses):
                    output_subdir = f"step_{completed_steps}"
                    if args.output_dir is not None:
                        output_subdir = os.path.join(args.output_dir, output_subdir)
                    accelerator.save_state(output_subdir)

            if completed_steps >= args.max_train_steps:
                break

        eval_data = eval_model(args, accelerator, model, tokenizer, eval_dataloader, metric, gen_kwargs, epoch)
        logger.info({"bleu": eval_data['score'], "eval loss": eval_data['loss']})
        if args.with_tracking:
            accelerator.log(
                {
                    "bleu": eval_data['score'],
                    "eval_loss": eval_data['loss'],
                    "train_loss": total_loss.item() / len(train_dataloader),
                    "compiled": eval_data['compiled'],
                    "tgt_compiled": eval_data['tgt_compiled'],
                    "err_line_ratio": eval_data['err_line_ratio'],
                    f"ep{epoch} validation_samples": eval_data['example_table'],
                    "epoch": epoch,
                    "step": completed_steps,
               },
                step=completed_steps,
            )

        if args.push_to_hub and epoch < args.num_train_epochs - 1:
            accelerator.wait_for_everyone()
            unwrapped_model = accelerator.unwrap_model(model)
            unwrapped_model.save_pretrained(
                args.output_dir, is_main_process=accelerator.is_main_process, save_function=accelerator.save
            )
            if accelerator.is_main_process:
                tokenizer.save_pretrained(args.output_dir)
                repo.push_to_hub(
                    commit_message=f"Training in progress epoch {epoch}", blocking=False, auto_lfs_prune=True
                )

        if args.checkpointing_steps == "epoch":
            output_dir = f"epoch_{epoch}"
            if args.output_dir is not None:
                output_dir = os.path.join(args.output_dir, output_dir)
            accelerator.save_state(output_dir)

    if args.with_tracking:
        accelerator.end_training()
    return eval_data['score']

def setup(args):
    # Sending telemetry. Tracking the example usage helps us better allocate resources to maintain them. The
    # information sent is the one passed as arguments along with your Python/PyTorch versions.
    send_example_telemetry(f"transpile_{args.source_lang}_to_{args.target_lang}", args)

    # Initialize the accelerator. We will let the accelerator handle device placement for us in this example.
    # If we're using tracking, we also need to initialize it here and it will by default pick up all supported trackers
    # in the environment
    accelerator = (
        Accelerator(log_with=args.report_to, logging_dir=args.output_dir) if args.with_tracking else Accelerator()
    )

    # Make one log on every process with the configuration for debugging.
    logging.basicConfig(
        format="%(asctime)s - %(levelname)s - %(name)s - %(message)s",
        datefmt="%m/%d/%Y %H:%M:%S",
        level=logging.INFO,
    )
    logger.info(accelerator.state, main_process_only=False)
    if accelerator.is_local_main_process:
        datasets.utils.logging.set_verbosity_warning()
        transformers.utils.logging.set_verbosity_info()
    else:
        datasets.utils.logging.set_verbosity_error()
        transformers.utils.logging.set_verbosity_error()

    # If passed along, set the training seed now.
    if args.seed is not None:
        set_seed(args.seed)

    # Handle the repository creation
    if accelerator.is_main_process:
        if args.push_to_hub:
            if args.hub_model_id is None:
                repo_name = get_full_repo_name(Path(args.output_dir).name, token=args.hub_token)
            else:
                repo_name = args.hub_model_id
            repo = Repository(args.output_dir, clone_from=repo_name)

            with open(os.path.join(args.output_dir, ".gitignore"), "w+") as gitignore:
                if "step_*" not in gitignore:
                    gitignore.write("step_*\n")
                if "epoch_*" not in gitignore:
                    gitignore.write("epoch_*\n")
        elif args.output_dir is not None:
            os.makedirs(args.output_dir, exist_ok=True)
    accelerator.wait_for_everyone()
    return accelerator

def get_datasets(args, accelerator, tokenizer, model):
    # Get the datasets: you can either provide your own CSV/JSON/TXT training and evaluation files (see below)
    # or just provide the name of one of the public datasets available on the hub at https://huggingface.co/datasets/
    # (the dataset will be downloaded automatically from the datasets Hub).
    #
    # For CSV/JSON files, this script will use the column called 'text' or the first column if no column called
    # 'text' is found. You can easily tweak this behavior (see below).
    #
    # In distributed training, the load_dataset function guarantee that only one local process can concurrently
    # download the dataset.
    if args.dataset_name is not None:
        # Downloading and loading a dataset from the hub.
        raw_datasets = load_dataset(args.dataset_name, args.dataset_config_name)
        column_names = raw_datasets["train"].column_names
    else:
        data_files = {}
        if args.train_file is not None:
            data_files["train"] = args.train_file
            extension = args.train_file.split(".")[-1]
        if args.validation_file is not None:
            data_files["validation"] = args.validation_file
            extension = args.validation_file.split(".")[-1]
        if args.test_file is not None:
            data_files["test"] = args.test_file
            extension = args.test_file.split(".")[-1]
        raw_datasets = load_dataset(extension, data_files=data_files)
        if args.train_file is not None:
            column_names = raw_datasets["train"].column_names
        elif args.validation_file is not None:
            column_names = raw_datasets["validation"].column_names
        elif args.test_file is not None:
            column_names = raw_datasets["test"].column_names
        else:
            assert False, f"At least one dataset needs to be loaded"
    # See more about loading any type of standard or custom dataset (from files, python dict, pandas DataFrame, etc) at
    # https://huggingface.co/docs/datasets/loading_datasets.html.
    # Get the language codes for input/target.

    source_lang = args.source_lang.split("_")[0]
    target_lang = args.target_lang.split("_")[0]
    prefix = args.source_prefix if args.source_prefix is not None else ""

    # Temporarily set max_target_length for training.
    max_target_length = args.max_length
    padding = "max_length" if args.pad_to_max_length else False

    def break_examples(examples_to_break, max_length):
        broken_inputs, broken_targets = [], []
        # option 1: time delay tgt
        for ex in examples_to_break:
            src_tokenized = tokenizer(ex[source_lang], return_tensors='pt', add_special_tokens=False).input_ids[0]
            tgt_tokenized = tokenizer(ex[target_lang], return_tensors='pt', add_special_tokens=False).input_ids[0]
            max_ex_len = max(tgt_tokenized.shape[-1], src_tokenized.shape[-1])
            num_windows = math.ceil((max_ex_len - args.window_overlap) / (max_length - args.window_overlap))
            if src_tokenized.shape[-1] <= tgt_tokenized.shape[-1]: 
                src_delta = 0 if num_windows == 1 else int((tgt_tokenized.shape[-1] - src_tokenized.shape[-1]) / (num_windows - 1))
                for i in range(num_windows):
                    src_start = max(i * (max_length - src_delta) - args.window_overlap, 0)
                    tgt_start = max(i * max_length - args.window_overlap, 0)
                    broken_inputs.append(tokenizer.decode(src_tokenized[src_start:min(src_start+max_length, src_tokenized.shape[-1])]))
                    broken_targets.append(tokenizer.decode(tgt_tokenized[tgt_start:min(tgt_start+max_length, tgt_tokenized.shape[-1])]))
            else: # tgt is shorter so give it a sense of time delay
                tgt_delta = 0 if num_windows == 1 else int((src_tokenized.shape[-1] - tgt_tokenized.shape[-1]) / (num_windows - 1))
                for i in range(num_windows):
                    src_start = max(i * max_length - args.window_overlap, 0)
                    tgt_start = max(i * (max_length - tgt_delta) - args.window_overlap, 0)
                    broken_inputs.append(tokenizer.decode(src_tokenized[src_start:min(src_start+max_length, src_tokenized.shape[-1])]))
                    broken_targets.append(tokenizer.decode(tgt_tokenized[tgt_start:min(tgt_start+max_length, tgt_tokenized.shape[-1])]))
        return broken_inputs, broken_targets

    def preprocess_function(examples):
        inputs = [ex[source_lang] for ex in examples["translation"]]
        targets = [ex[target_lang] for ex in examples["translation"]]
        inputs = [prefix + inp for inp in inputs]
        if args.remove_too_long:
            src_inputs = tokenizer(inputs)
            indices_to_remove = {i for i, inp in enumerate(src_inputs['input_ids']) if len(inp) > args.max_length}
            tgt_inputs = tokenizer(targets)
            indices_to_remove |= {i for i, inp in enumerate(tgt_inputs['input_ids']) if len(inp) > max_target_length}
            inputs = [input for i, input in enumerate(inputs) if i not in indices_to_remove]
            targets = [target for i, target in enumerate(targets) if i not in indices_to_remove]
        elif args.window_overlap:
            src_inputs = tokenizer(inputs)
            indices_to_break = {i for i, inp in enumerate(src_inputs['input_ids']) if len(inp) > args.max_length}
            tgt_inputs = tokenizer(targets)
            indices_to_break |= {i for i, inp in enumerate(tgt_inputs['input_ids']) if len(inp) > max_target_length}
            broken_inputs, broken_targets = break_examples([examples['translation'][i] for i in indices_to_break], args.max_length)
            inputs = [input for i, input in enumerate(inputs) if i not in indices_to_break] + broken_inputs
            targets = [target for i, target in enumerate(targets) if i not in indices_to_break] + broken_targets
        decoder_inputs = [tokenizer.eos_token + dec_inp for dec_inp in targets]
        
        model_inputs = tokenizer(inputs, max_length=args.max_length, padding=padding, truncation=True)
        decoder_inputs = tokenizer(decoder_inputs, max_length=args.max_length, padding=padding, truncation=True)
        # Tokenize targets with the `text_target` keyword argument
        labels = tokenizer(text_target=targets, max_length=max_target_length, padding=padding, truncation=True)
        # If we are padding here, replace all tokenizer.pad_token_id in the labels by -100 when we want to ignore
        # padding in the loss.
        if padding == "max_length" and args.ignore_pad_token_for_loss:
            labels["input_ids"] = [
                [(l if l != tokenizer.pad_token_id else -100) for l in label] for label in labels["input_ids"]
            ]

        model_inputs["labels"] = labels["input_ids"]
        return model_inputs
    
    with accelerator.main_process_first():
        processed_datasets = raw_datasets.map(
            preprocess_function,
            batched=True,
            num_proc=args.preprocessing_num_workers,
            remove_columns=column_names,
            load_from_cache_file=not args.overwrite_cache,
            desc="Running tokenizer on dataset",
        )
    
    return processed_datasets

def load_model(args, accelerator):
    # Load pretrained model and tokenizer
    #
    # In distributed training, the .from_pretrained methods guarantee that only one local process can concurrently
    # download model & vocab.
    if args.pretrained_tokenizer:
        tokenizer =  BartTokenizer.from_pretrained(args.pretrained_tokenizer)
    elif args.tokenizer_name:
        tokenizer = AutoTokenizer.from_pretrained(args.tokenizer_name, use_fast=not args.use_slow_tokenizer)
        if args.tokenizer_name == 'uclanlp/plbart-base':
            tokenizer.add_token(['<N>'])
    elif args.model_name_or_path:
        tokenizer = AutoTokenizer.from_pretrained(args.model_name_or_path, use_fast=not args.use_slow_tokenizer)
    else:
        raise ValueError(
            "You are instantiating a new tokenizer from scratch. This is not supported by this script."
            "You can do it from another script, save it, and load it from here, using --tokenizer_name."
        )
    tokenizer.model_max_length=args.max_length
    
    if args.config_name:
        config = AutoConfig.from_pretrained(args.config_name)
    elif args.model_name_or_path:
        config = AutoConfig.from_pretrained(args.model_name_or_path)
    else:
        config = CONFIG_MAPPING[args.model_type]()
        logger.warning("You are instantiating a new config instance from scratch.")
    config.max_position_embeddings=args.max_length

    if args.model_name_or_path:
        model = AutoModelForSeq2SeqLM.from_pretrained(
            args.model_name_or_path,
            from_tf=bool(".ckpt" in args.model_name_or_path),
            config=config,
        )
        config.vocab_size = len(tokenizer)
    else:
        config.vocab_size = len(tokenizer)
        logger.info("Training new model from scratch")
        model = AutoModelForSeq2SeqLM.from_config(config)
    model.resize_token_embeddings(len(tokenizer))
    # We resize the embeddings only when necessary to avoid index errors. If you are creating a model from scratch
    # on a small vocab and want a smaller embedding size, remove this test.
    embedding_size = model.get_input_embeddings().weight.shape[0]
    if len(tokenizer) > embedding_size:
        model.resize_token_embeddings(len(tokenizer))

    # Set decoder_start_token_id
    if model.config.decoder_start_token_id is None and isinstance(tokenizer, (MBartTokenizer, MBartTokenizerFast)):
        assert (
            args.target_lang is not None and args.source_lang is not None
        ), "mBart requires --target_lang and --source_lang"
        if isinstance(tokenizer, MBartTokenizer):
            model.config.decoder_start_token_id = tokenizer.lang_code_to_id[args.target_lang]
        else:
            model.config.decoder_start_token_id = tokenizer.convert_tokens_to_ids(args.target_lang)

    if model.config.decoder_start_token_id is None:
        print(f"config.decoder_start_token_id is set to None, so auto setting to to BOS")
        model.config.decoder_start_token_id = tokenizer.bos_token_id
        # raise ValueError("Make sure that `config.decoder_start_token_id` is correctly defined")


    # Preprocessing the datasets.
    # First we tokenize all the texts.

    # For translation we set the codes of our source and target languages (only useful for mBART, the others will
    # ignore those attributes).
    if isinstance(tokenizer, (MBartTokenizer, MBartTokenizerFast)):
        if args.source_lang is not None:
            tokenizer.src_lang = args.source_lang
        if args.target_lang is not None:
            tokenizer.tgt_lang = args.target_lang
    if accelerator.is_main_process and args.output_dir is not None:
        accelerator.wait_for_everyone()
        tokenizer.save_pretrained(args.output_dir)
        print(f"Saved tokenizer to {args.output_dir}")

    return config, tokenizer, model

def main():
    args = parse_args()
    accelerator = setup(args)
    config, tokenizer, model = load_model(args, accelerator)
    processed_datasets = get_datasets(args, accelerator, tokenizer, model)

    metric = evaluate.load("sacrebleu")

    gen_kwargs = {
        "max_length": args.max_length,
        "num_beams": args.num_beams,
        "no_repeat_ngram_size": 0
    }
    
    # DataLoaders creation:
    label_pad_token_id = -100 if args.ignore_pad_token_for_loss else tokenizer.pad_token_id
    if args.pad_to_max_length:
        # If padding was already done ot max length, we use the default data collator that will just convert everything
        # to tensors.
        data_collator = default_data_collator
    else:
        # Otherwise, `DataCollatorWithPadding` will apply dynamic padding for us (by padding to the maximum length of
        # the samples passed). When using mixed precision, we add `pad_to_multiple_of=8` to pad all tensors to multiple
        # of 8s, which will enable the use of Tensor Cores on NVIDIA hardware with compute capability >= 7.5 (Volta).
        data_collator = DataCollatorForSeq2Seq(
            tokenizer,
            model=model,
            label_pad_token_id=label_pad_token_id,
            pad_to_multiple_of=8 if accelerator.use_fp16 else None,
        )
    if args.train:
        train_dataset = processed_datasets["train"]
        eval_dataset = processed_datasets["validation"]

        # Log a few random samples from the training set:
        for index in random.sample(range(len(train_dataset)), 3):
            logger.info(f"Sample {index} of the training set:.")
            logger.info(tokenizer.decode(train_dataset[index]['input_ids'], skip_special_tokens=True))
            logger.info(tokenizer.decode(train_dataset[index]['labels'], skip_special_tokens=True))
    
        train_dataloader = DataLoader(
            train_dataset, shuffle=True, collate_fn=data_collator, batch_size=args.per_device_train_batch_size
        )
        eval_dataloader = DataLoader(eval_dataset, collate_fn=data_collator, batch_size=args.per_device_eval_batch_size)

        # Optimizer
        # Split weights in two groups, one with weight decay and the other not.
        no_decay = ["bias", "LayerNorm.weight", "layer_norm.weight"]
        optimizer_grouped_parameters = [
            {
                "params": [p for n, p in model.named_parameters() if not any(nd in n for nd in no_decay)],
                "weight_decay": args.weight_decay,
            },
            {
                "params": [p for n, p in model.named_parameters() if any(nd in n for nd in no_decay)],
                "weight_decay": 0.0,
            },
        ]
        optimizer = torch.optim.AdamW(optimizer_grouped_parameters, lr=args.learning_rate)

        # Scheduler and math around the number of training steps.
        overrode_max_train_steps = False
        args.num_update_steps_per_epoch = math.ceil(len(train_dataloader) / args.gradient_accumulation_steps)
        if args.max_train_steps is None:
            args.max_train_steps = args.num_train_epochs * args.num_update_steps_per_epoch
            overrode_max_train_steps = True

        lr_scheduler = get_scheduler(
            name=args.lr_scheduler_type,
            optimizer=optimizer,
            num_warmup_steps=args.num_warmup_steps,
            num_training_steps=args.max_train_steps,
        )

        # Prepare everything with our `accelerator`.
        model, optimizer, train_dataloader, eval_dataloader, lr_scheduler = accelerator.prepare(
            model, optimizer, train_dataloader, eval_dataloader, lr_scheduler
        )
    
        # We need to recalculate our total training steps as the size of the training dataloader may have changed.
        args.num_update_steps_per_epoch = math.ceil(len(train_dataloader) / args.gradient_accumulation_steps)
        if overrode_max_train_steps:
            args.max_train_steps = args.num_train_epochs * args.num_update_steps_per_epoch
        # Afterwards we recalculate our number of training epochs
        args.num_train_epochs = math.ceil(args.max_train_steps / args.num_update_steps_per_epoch)
        # Figure out how many steps we should save the Accelerator states
        if args.checkpointing_steps is not None and args.checkpointing_steps.isdigit():
            args.checkpointing_steps = int(args.checkpointing_steps)

        # We need to initialize the trackers we use, and also store our configuration.
        # We initialize the trackers only on main process because `accelerator.log`
        # only logs on main process and we don't want empty logs/runs on other processes.
        if args.with_tracking:
            if accelerator.is_main_process:
                experiment_config = vars(args)
                # TensorBoard cannot log Enums, need the raw value
                experiment_config["lr_scheduler_type"] = experiment_config["lr_scheduler_type"].value
                init_kwargs = {
                        "wandb": {
                            "settings": wandb.Settings(start_method='thread')
                            }
                        }
                accelerator.init_trackers(f"transpile_{args.source_lang}_to_{args.target_lang}", experiment_config, init_kwargs)

        total_batch_size = args.per_device_train_batch_size * accelerator.num_processes * args.gradient_accumulation_steps
        logger.info("***** Running training *****")
        logger.info(f"  Num examples = {len(train_dataset)}")
        logger.info(f"  Num Epochs = {args.num_train_epochs}")
        logger.info(f"  Instantaneous batch size per device = {args.per_device_train_batch_size}")
        logger.info(f"  Total train batch size (w. parallel, distributed & accumulation) = {total_batch_size}")
        logger.info(f"  Gradient Accumulation steps = {args.gradient_accumulation_steps}")
        logger.info(f"  Total optimization steps = {args.max_train_steps}")
        last_eval_score = train_model(args, accelerator, logger, model, tokenizer, optimizer, lr_scheduler, metric, gen_kwargs, train_dataloader, eval_dataloader)
    

        if args.output_dir is not None:
            accelerator.wait_for_everyone()
            unwrapped_model = accelerator.unwrap_model(model)
            unwrapped_model.save_pretrained(
                args.output_dir, is_main_process=accelerator.is_main_process, save_function=accelerator.save
            )
            if accelerator.is_main_process:
                tokenizer.save_pretrained(args.output_dir)
                if args.push_to_hub:
                    repo.push_to_hub(commit_message="End of training", auto_lfs_prune=True)
            with open(os.path.join(args.output_dir, "eval_results.json"), "w") as f:
                json.dump({"eval_bleu": last_eval_score}, f)

    if args.test:
        test_dataset = processed_datasets["test"]

        # Log a few random samples from the training set:
        for index in random.sample(range(len(test_dataset)), 3):
            logger.info(f"Sample {index} of the test set: {test_dataset[index]}.")
    

        test_dataloader = DataLoader(test_dataset, collate_fn=data_collator, batch_size=args.per_device_eval_batch_size)
        
        model, test_dataloader = accelerator.prepare(model, test_dataloader)
    
        test_data = eval_model(args, accelerator, logger, model,tokenizer, test_dataloader, metric, gen_kwargs, 'test_predictions.jsonl')
        
        if args.output_dir is not None:
            accelerator.wait_for_everyone()
            with open(os.path.join(args.output_dir, "test_results.json"), "w") as f:
                json.dump({"test_bleu": test_data['score']}, f)


if __name__ == "__main__":
    main()
