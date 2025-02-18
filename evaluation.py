import numpy as np
import json
import subprocess
import torch
import os
from Levenshtein import distance as lev_dist
import wandb


def postprocess_text(preds, labels):
    preds = [pred.strip() for pred in preds]
    labels = [[label.strip()] for label in labels]
    return preds, labels


def compute_intermediate_metrics(metric, inputs, predictions, labels, example_table, output_file, compile_folder, num_examples, tgt_lang):
    metric.add_batch(predictions=predictions, references=labels)

    compilation_cmd = {
        'arm': 'aarch64-conda-linux-gnu-as',
        'riscv': 'riscv64-linux-gnu-as'
    }.get(tgt_lang, None)

    num_compiled_arm, num_tgt_compiled_arm = 0, 0
    num_compiled_riscv, num_tgt_compiled_riscv = 0, 0
    num_erroneous_lines_arm = 0
    num_erroneous_lines_riscv = 0
    num_em_arm = 0
    num_em_riscv = 0

    with open(output_file, "a") as of:
        for i, (src, tgt_l, pred) in enumerate(zip(inputs, labels, predictions)):
            tgt = tgt_l[0]

            # Track exact match separately per architecture
            if tgt.strip() == pred.strip():
                if tgt_lang == 'arm':
                    num_em_arm += 1
                elif tgt_lang == 'riscv':
                    num_em_riscv += 1

            compilation_output = "not run"
            if compilation_cmd is not None:
                compilation_output = ""
                fail, tgt_fail = False, False

                with open(os.path.join(compile_folder, f"pred{num_examples+i}_{tgt_lang}.s"), "w") as f:
                    print(pred, file=f)
                with open(os.path.join(compile_folder, f"tgt{num_examples+i}_{tgt_lang}.s"), "w") as f:
                    print(tgt, file=f)

                cmds = [
                    f"{compilation_cmd} -o {compile_folder}/pred{num_examples+i}_{tgt_lang}.o {compile_folder}/pred{num_examples+i}_{tgt_lang}.s",
                    f"{compilation_cmd} -o {compile_folder}/tgt{num_examples+i}_{tgt_lang}.o {compile_folder}/tgt{num_examples+i}_{tgt_lang}.s"
                ]

                try:
                    output = subprocess.check_output(
                        cmds[0], stderr=subprocess.STDOUT, shell=True, timeout=3,
                        universal_newlines=True
                    )
                except subprocess.CalledProcessError as exc:
                    compilation_output = exc.output
                    fail = True

                # Track errors per architecture
                if tgt_lang == 'arm':
                    num_erroneous_lines_arm += compilation_output.count('Error:')
                elif tgt_lang == 'riscv':
                    num_erroneous_lines_riscv += compilation_output.count('Error:')

                if not fail:
                    if tgt_lang == 'arm':
                        num_compiled_arm += 1
                    elif tgt_lang == 'riscv':
                        num_compiled_riscv += 1

                try:
                    subprocess.check_output(
                        cmds[1], stderr=subprocess.STDOUT, shell=True, timeout=3,
                        universal_newlines=True
                    )
                except subprocess.CalledProcessError as exc:
                    tgt_fail = True

                if not tgt_fail:
                    if tgt_lang == 'arm':
                        num_tgt_compiled_arm += 1
                    elif tgt_lang == 'riscv':
                        num_tgt_compiled_riscv += 1

            example_table.add_data(src, pred, tgt, compilation_output)
            test_predictions = {'src': src, 'tgt': tgt, 'pred': pred, 'pred compile output': compilation_output}
            of.write(f"{json.dumps(test_predictions)}\n")

    return_dict = {
        "num_compiled_arm": num_compiled_arm,
        "num_tgt_compiled_arm": num_tgt_compiled_arm,
        "num_erroneous_lines_arm": num_erroneous_lines_arm,
        "num_compiled_riscv": num_compiled_riscv,
        "num_tgt_compiled_riscv": num_tgt_compiled_riscv,
        "num_erroneous_lines_riscv": num_erroneous_lines_riscv,
        "num_em_arm": num_em_arm,
        "num_em_riscv": num_em_riscv
    }
    return return_dict


def eval_model(args, accelerator, model, tokenizer, dataloader, metric, gen_kwargs, epoch):
    model.eval()

    save_results_to = f'ep{epoch}_eval_predictions.jsonl'
    compile_folder = os.path.join(args.output_dir, 'compile', f"ep{epoch}")
    os.makedirs(compile_folder, exist_ok=True)

    eval_loss = 0.0
    num_examples = 0
    example_table = wandb.Table(columns=['input', 'predicted', 'target', 'pred_compilation'])

    num_compiled_arm, num_tgt_compiled_arm = 0, 0
    num_compiled_riscv, num_tgt_compiled_riscv = 0, 0
    num_erroneous_lines_arm = 0
    num_erroneous_lines_riscv = 0
    num_em_arm = 0
    num_em_riscv = 0

    for step, batch in enumerate(dataloader):
        with torch.no_grad():
            outputs = model(**batch)
            loss = outputs.loss
            if args.with_tracking:
                eval_loss += loss.detach().float()

            generated_tokens = accelerator.unwrap_model(model).generate(
                batch["input_ids"],
                attention_mask=batch["attention_mask"],
                **gen_kwargs,
            )

            decoded_preds = tokenizer.batch_decode(generated_tokens, skip_special_tokens=True)
            decoded_labels = tokenizer.batch_decode(batch["labels"], skip_special_tokens=True)
            decoded_preds, decoded_labels = postprocess_text(decoded_preds, decoded_labels)

        batch_eval_info = compute_intermediate_metrics(
            metric, tokenizer.batch_decode(batch["input_ids"], skip_special_tokens=True), decoded_preds,
            decoded_labels, example_table, os.path.join(args.output_dir, save_results_to), compile_folder,
            num_examples, tgt_lang=args.target_lang
        )

        num_compiled_arm += batch_eval_info['num_compiled_arm']
        num_tgt_compiled_arm += batch_eval_info['num_tgt_compiled_arm']
        num_compiled_riscv += batch_eval_info['num_compiled_riscv']
        num_tgt_compiled_riscv += batch_eval_info['num_tgt_compiled_riscv']
        num_erroneous_lines_arm += batch_eval_info['num_erroneous_lines_arm']
        num_erroneous_lines_riscv += batch_eval_info['num_erroneous_lines_riscv']
        num_em_arm += batch_eval_info['num_em_arm']
        num_em_riscv += batch_eval_info['num_em_riscv']

    return locals()  # Returns all tracked values 🚀

