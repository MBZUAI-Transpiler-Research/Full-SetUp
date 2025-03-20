import argparse
import os

import torch
from accelerate import Accelerator
from datasets import load_dataset
from peft import LoraConfig, get_peft_model, prepare_model_for_kbit_training, set_peft_model_state_dict
from peft import PeftConfig, PeftModel
from torch.utils.data import IterableDataset
from tqdm import tqdm
from transformers import AutoConfig, AutoModelForCausalLM, AutoTokenizer, Trainer, TrainingArguments, logging, set_seed
from transformers import TrainerCallback, TrainingArguments, TrainerState, TrainerControl
from transformers.trainer_utils import PREFIX_CHECKPOINT_DIR

"""
Fine-Tune StarCoder 
"""

class MyTrainer(Trainer):
    def _load_from_checkpoint(self, resume_from_checkpoint, model=None):
        return


class LoadBestPeftModelCallback(TrainerCallback):
    def on_train_end(
        self,
        args: TrainingArguments,
        state: TrainerState,
        control: TrainerControl,
        **kwargs,
    ):
        print(f"Loading best peft model from {state.best_model_checkpoint} (score: {state.best_metric}).")
        best_model_path = os.path.join(state.best_model_checkpoint, "adapter_model.bin")
        adapters_weights = torch.load(best_model_path)
        model = kwargs["model"]
        set_peft_model_state_dict(model, adapters_weights)
        return control
    

def get_args():
    parser = argparse.ArgumentParser()
    parser.add_argument("--model_path", type=str, default="bigcode/starcoderbase") 
    parser.add_argument("--train_file", type=str, default="data/cloze_data_train.json") 
    parser.add_argument("--validation_file", type=str, default="data/cloze_data_dev.json") 
    parser.add_argument("--test_file", type=str) 
    parser.add_argument("--lang1", type=str, default="arm")
    parser.add_argument("--lang2", type=str, default="risc")
    parser.add_argument("--streaming", action="store_true")
    parser.add_argument("--run_name", type=str)

    parser.add_argument("--seq_length", type=int, default=4096)
    parser.add_argument("--max_steps", type=int, default=10000)
    parser.add_argument("--batch_size", type=int, default=1)
    parser.add_argument("--gradient_accumulation_steps", type=int, default=16)

    parser.add_argument("--lora_r", type=int, default=16)
    parser.add_argument("--lora_alpha", type=int, default=32)
    parser.add_argument("--lora_dropout", type=float, default=0.05)

    parser.add_argument("--learning_rate", type=float, default=5e-6)
    parser.add_argument("--lr_scheduler_type", type=str, default="cosine")
    parser.add_argument("--num_warmup_steps", type=int, default=100)
    parser.add_argument("--weight_decay", type=float, default=0.05)

    parser.add_argument("--local_rank", type=int, default=0)
    parser.add_argument("--no_fp16", action="store_false")
    parser.add_argument("--bf16", action="store_true", default=True)
    parser.add_argument("--no_gradient_checkpointing", action="store_false", default=False)
    parser.add_argument("--seed", type=int, default=0)
    parser.add_argument("--num_workers", type=int, default=None)
    parser.add_argument("--output_dir", type=str)
    parser.add_argument("--load_from_checkpoint", type=str)
    parser.add_argument("--log_freq", default=100, type=int)
    parser.add_argument("--eval_freq", default=100, type=int)
    parser.add_argument("--save_freq", default=1000, type=int)

    return parser.parse_args()


def print_trainable_parameters(model):
    """
    Prints the number of trainable parameters in the model.
    """
    trainable_params = 0
    all_param = 0
    for _, param in model.named_parameters():
        all_param += param.numel()
        if param.requires_grad:
            trainable_params += param.numel()
    print(
        f"trainable params: {trainable_params} || all params: {all_param} || trainable%: {100 * trainable_params / all_param}"
    )

def chars_token_ratio(dataset, tokenizer, input_lang, output_lang, nb_examples=400):
    # Estimate the average number of characters per token in the dataset.
    total_characters, total_tokens = 0, 0
    for _, example in tqdm(zip(range(nb_examples), iter(dataset)), total=nb_examples):
        text = prepare_sample_text(tokenizer, example['translation'], input_lang, output_lang, as_text=True)
        total_characters += len(text)
        if tokenizer.is_fast:
            total_tokens += len(tokenizer(text).tokens())
        else:
            total_tokens += len(tokenizer.tokenize(text))

    return total_characters / total_tokens


def prepare_sample_text(tokenizer, example, input_lang, output_lang, as_text=False):
    if as_text:
        return f"<{input_lang}>:{example[input_lang]}\n\n<{output_lang}>:{example[output_lang]}"
    # weird concatenating together because we want to have clean indexing into the acutal sequence parts
    input_ids = tokenizer(f"<{input_lang}>:", return_tensors='pt').input_ids
    if input_ids[0][-1] == tokenizer.eos_token_id: input_ids = input_ids[:,:-1]
    in_start_idx = input_ids.shape[-1]
    input_seq_tokenized = tokenizer(example[input_lang], return_tensors='pt').input_ids
    if input_seq_tokenized[0][-1] == tokenizer.eos_token_id: input_seq_tokenized = input_seq_tokenized[:,:-1]
    if input_seq_tokenized[0][0] == tokenizer.bos_token_id: input_seq_tokenized = input_seq_tokenized[:,1:]
    in_seq_len = input_seq_tokenized.shape[-1] 
    tgt_lang_prefix = tokenizer(f"\n\n<{output_lang}>:", return_tensors='pt').input_ids
    if tgt_lang_prefix[0][-1] == tokenizer.eos_token_id: tgt_lang_prefix = tgt_lang_prefix[:,:-1]
    if tgt_lang_prefix[0][0] == tokenizer.bos_token_id: tgt_lang_prefix = tgt_lang_prefix[:,1:]
    input_ids = torch.cat((input_ids, input_seq_tokenized, tgt_lang_prefix), dim=-1) 
    out_start_idx = input_ids.shape[-1]
    output_seq_tokenized = tokenizer(example[output_lang], return_tensors='pt').input_ids
    if output_seq_tokenized[0][0] == tokenizer.bos_token_id: output_seq_tokenized = output_seq_tokenized[:,1:]
    out_seq_len = output_seq_tokenized.shape[-1] 
    input_ids = torch.cat((input_ids, output_seq_tokenized), dim=-1) 
    return input_ids, (in_start_idx, in_seq_len, out_start_idx, out_seq_len)

class DataCollatorWithPosIds():
    def __call__(self, features, return_tensors=None):
        if return_tensors is None:
            return_tensors = "pt"
        batch = {}
        for k, v in features[0].items():
            if isinstance(v, torch.Tensor):
                batch[k] = torch.stack([f[k] for f in features])
            elif isinstance(v, np.ndarray):
                batch[k] = torch.tensor(np.stack([f[k] for f in features]))
            else:
                batch[k] = torch.tensor([f[k] for f in features])
        return batch


class Seq2SeqConstantLenghtDataset(IterableDataset):
    """
    Iterable dataset that returns constant length chunks of tokens from stream of text files.
        Args:
            tokenizer (Tokenizer): The processor used for proccessing the data.
            dataset (dataset.Dataset): Dataset with text files.
            infinite (bool): If True the iterator is reset after dataset reaches end else stops.
            seq_length (int): Length of token sequences to return.
            num_of_sequences (int): Number of token sequences to keep in buffer.
            chars_per_token (int): Number of characters per token used to estimate number of tokens in text buffer.
    """

    def __init__(
        self,
        tokenizer,
        dataset,
        infinite,
        seq_length,
        chars_per_token,
        num_of_sequences=1024,
        input_lang="arm",
        output_lang="risc"
    ):
        self.tokenizer = tokenizer
        self.concat_token_id = tokenizer.eos_token_id
        self.dataset = dataset
        self.seq_length = seq_length
        self.infinite = infinite
        self.current_size = 0
        self.max_buffer_size = seq_length * chars_per_token * num_of_sequences
        self.input_lang = input_lang
        self.output_lang = output_lang

    def __iter__(self):
        iterator = iter(self.dataset)
        more_examples = True
        while more_examples:
            tokenized_buffer, buffer_len = [], 0
            while True:
                if buffer_len >= self.max_buffer_size:
                    break
                try:
                    tokenized_buffer.append(prepare_sample_text(self.tokenizer, next(iterator)['translation'], self.input_lang, self.output_lang)[0][0].tolist())
                    buffer_len += len(tokenized_buffer[-1])
                except StopIteration:
                    if self.infinite:
                        iterator = iter(self.dataset)
                    else:
                        more_examples = False
                        break
            all_token_ids = []
            all_pos_ids = []
            for tokenized_input in tokenized_buffer:
                all_token_ids.extend(tokenized_input + [self.concat_token_id])
                all_pos_ids.extend(torch.arange(len(tokenized_input)+1).tolist()) 
            for i in range(0, len(all_token_ids), self.seq_length):
                input_ids = all_token_ids[i : i + self.seq_length]
                pos_ids = all_pos_ids[i : i + self.seq_length]
                if len(input_ids) == self.seq_length:
                    if self.current_size % 10000 == 0:
                        print(f'training chunk example (len={len(input_ids)}):\n{self.tokenizer.decode(input_ids)}')
                    self.current_size += 1
                    yield {
                        "input_ids": torch.LongTensor(input_ids),
                        "labels": torch.LongTensor(input_ids),
                        "position_ids": torch.LongTensor(pos_ids),
                    }

class Seq2SeqSingleExampleDataset(IterableDataset):
    """
    Iterable dataset that returns single-example chunks from stream of text files.
        Args:
            tokenizer (Tokenizer): The processor used for proccessing the data.
            dataset (dataset.Dataset): Dataset with text files.
            infinite (bool): If True the iterator is reset after dataset reaches end else stops.
            seq_length (int): Length of token sequences to return.
    """

    def __init__(
        self,
        tokenizer,
        dataset,
        infinite,
        seq_length,
        input_lang="arm",
        output_lang="risc"
    ):
        self.tokenizer = tokenizer
        self.concat_token_id = tokenizer.eos_token_id
        self.dataset = dataset
        self.seq_length = seq_length
        self.infinite = infinite
        self.current_size = 0
        self.input_lang = input_lang
        self.output_lang = output_lang

    def __iter__(self):
        iterator = iter(self.dataset)
        more_examples = True
        while more_examples:
            while True:
                try:
                    tokenized_buffer = prepare_sample_text(self.tokenizer, next(iterator)['translation'], self.input_lang, self.output_lang)[0][0].tolist() + [self.concat_token_id]
                except StopIteration:
                    if self.infinite: 
                        iterator = iter(self.dataset)
                    else:
                        more_examples = False
                        break
                input_ids = tokenized_buffer[:self.seq_length]
                if len(input_ids) == self.seq_length:
                    if self.current_size % 10000 == 0:
                        print(f'training chunk example (len={len(input_ids)}):\n{self.tokenizer.decode(input_ids)}')
                    self.current_size += 1
                    yield {
                        "input_ids": torch.LongTensor(input_ids),
                        "labels": torch.LongTensor(input_ids),
                    }

def create_seq2seq_datasets(tokenizer, args):
    data_files = {
        'train': args.train_file,
        'validation': args.validation_file
    }
    if args.test_file: data_files['test'] = args.test_file
    extension = args.train_file.split('.')[-1]

    raw_datasets = load_dataset(extension, data_files=data_files)
    column_names = raw_datasets['train'].column_names
    chars_per_token = chars_token_ratio(raw_datasets['train'], tokenizer, args.lang1, args.lang2)
    print(f"The character to token ratio of the dataset is: {chars_per_token:.2f}")

    train_dataset = Seq2SeqConstantLenghtDataset(
    # train_dataset = Seq2SeqSingleExampleDataset(
        tokenizer,
        raw_datasets['train'],
        infinite=True,
        seq_length=args.seq_length,
        chars_per_token=chars_per_token,
        input_lang=args.lang1,
        output_lang=args.lang2
    )
    valid_dataset = Seq2SeqConstantLenghtDataset(
    # valid_dataset = Seq2SeqSingleExampleDataset(
        tokenizer,
        raw_datasets['validation'],
        infinite=False,
        seq_length=args.seq_length,
        chars_per_token=chars_per_token,
        input_lang=args.lang1,
        output_lang=args.lang2
    )
    return train_dataset, valid_dataset

def run_training(args, train_data, val_data):
    print("Loading the model")
    # disable caching mechanism when using gradient checkpointing
    model = AutoModelForCausalLM.from_pretrained(
        args.model_path,
        use_auth_token=True,
        use_cache=not args.no_gradient_checkpointing,
        low_cpu_mem_usage=True,
        load_in_8bit=True if torch.cuda.is_available() else False,
        trust_remote_code=True,
        device_map={"": Accelerator().process_index} if torch.cuda.is_available() else None,
    )
    model = prepare_model_for_kbit_training(model)


    if args.load_from_checkpoint:
        model = PeftModel.from_pretrained(model, args.load_from_checkpoint, is_trainable=True)
        model.train()
    else: 
        if 'starcoder' in args.model_path: target_modules = ["c_proj", "c_attn", "q_attn"]
        elif 'lama' in args.model_path: target_modules = ["q_proj", "v_proj"] 
        lora_config = LoraConfig(
            r=args.lora_r,
            lora_alpha=args.lora_alpha,
            lora_dropout=args.lora_dropout,
            bias="none",
            task_type="CAUSAL_LM",
            target_modules = target_modules
        )

        model = get_peft_model(model, lora_config)

    print_trainable_parameters(model)

    train_data.start_iteration = 0

    print("Starting main loop")

    training_args = TrainingArguments(
        output_dir=args.output_dir,
        dataloader_drop_last=True,
        evaluation_strategy="steps",
        save_strategy="steps",
        max_steps=args.max_steps,
        eval_steps=args.eval_freq,
        save_steps=args.save_freq,
        logging_steps=args.log_freq,
        per_device_train_batch_size=args.batch_size,
        per_device_eval_batch_size=args.batch_size,
        learning_rate=args.learning_rate,
        lr_scheduler_type=args.lr_scheduler_type,
        warmup_steps=args.num_warmup_steps,
        gradient_accumulation_steps=args.gradient_accumulation_steps,
        gradient_checkpointing=not args.no_gradient_checkpointing,
        fp16=not args.no_fp16,
        bf16=args.bf16,
        weight_decay=args.weight_decay,
        run_name=args.run_name,
        report_to="wandb",
        ddp_find_unused_parameters=False,
        load_best_model_at_end=True,
        resume_from_checkpoint=args.load_from_checkpoint
    )
    data_collator = DataCollatorWithPosIds()

    trainer = MyTrainer(
        model=model, 
        args=training_args, 
        train_dataset=train_data, 
        eval_dataset=val_data, 
        data_collator=data_collator,
        callbacks=[LoadBestPeftModelCallback])

    print("Training...")
    if args.load_from_checkpoint:
        trainer.train(args.load_from_checkpoint)
    else:
        trainer.train()

    print("Saving last checkpoint of the model")
    model.save_pretrained(os.path.join(args.output_dir, "final_checkpoint/"))


def main(args):
    tokenizer = AutoTokenizer.from_pretrained(args.model_path, use_auth_token=True)
    train_dataset, eval_dataset = create_seq2seq_datasets(tokenizer, args)
    run_training(args, train_dataset, eval_dataset)


if __name__ == "__main__":
    args = get_args()

    set_seed(args.seed)
    os.makedirs(args.output_dir, exist_ok=True)

    logging.set_verbosity_error()

    main(args)
