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

    compilation_cmd = 'aarch64-conda-linux-gnu-as' if tgt_lang == 'arm' else None
    num_compiled = 0
    num_tgt_compiled = 0
    num_erroneous_lines = 0
    num_em = 0
    with open(output_file, "a") as of:
        for i, (src, tgt_l, pred) in enumerate(zip(inputs, labels, predictions)):
            # Test compilation
            tgt = tgt_l[0]
            if tgt.strip() == pred.strip(): num_em += 1
            compilation_output = "not run"
            if compilation_cmd is not None:
                compilation_output = ""
                fail, tgt_fail = False, False
                with open(os.path.join(compile_folder, f"pred{num_examples+i}.s"), "w") as f: 
                    print(pred, file=f)
                with open(os.path.join(compile_folder, f"tgt{num_examples+i}.s"), "w") as f: 
                    print(tgt, file=f)
                cmds = [f"{compilation_cmd} -o hello.o {compile_folder}/pred{num_examples+i}.s", f"{compilation_cmd} -o hello.o {compile_folder}/tgt{num_examples+i}.s"]
                try:
                    output = subprocess.check_output(
                            cmds[0], stderr=subprocess.STDOUT, shell=True, timeout=3,
                            universal_newlines=True)
                except subprocess.CalledProcessError as exc:   
                    compilation_output = exc.output  
                    fail = True 
                num_erroneous_lines += compilation_output.count('Error:')
                if not fail: num_compiled += 1
                try:
                    subprocess.check_output(
                            cmds[1], stderr=subprocess.STDOUT, shell=True, timeout=3,
                            universal_newlines=True)
                except subprocess.CalledProcessError as exc:   
                    tgt_fail = True
                if not tgt_fail: num_tgt_compiled += 1
            example_table.add_data(src, pred, tgt, compilation_output)
            test_predictions = {'src': src, 'tgt': tgt, 'pred': pred, 'pred compile output': compilation_output}
            of.write(f"{json.dumps(test_predictions)}\n")
    
    return_dict = {"num_compiled": num_compiled, "num_tgt_compiled": num_tgt_compiled, "num_erroneous_lines": num_erroneous_lines, "num_em": num_em}
    return return_dict


def eval_model(args, accelerator, model, tokenizer, dataloader, metric, gen_kwargs, epoch):
    model.eval()
    
    save_results_to = f'ep{epoch}_eval_predictions.jsonl'
    compile_folder = os.path.join(args.output_dir, 'compile', f"ep{epoch}")
    if not os.path.exists(compile_folder):
        os.makedirs(compile_folder, exist_ok=True)

    eval_loss = 0.0
    num_em = 0
    num_compiled, num_tgt_compiled = 0, 0
    samples_seen = 0
    num_erroneous_lines = 0
    num_examples = 0
    example_table = wandb.Table(columns=['input', 'predicted', 'target', 'pred_compilation'])
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

            generated_tokens = accelerator.pad_across_processes(
                generated_tokens, dim=1, pad_index=tokenizer.pad_token_id
            )
            labels = batch["labels"]
            if not args.pad_to_max_length:
                # If we did not pad to max length, we need to pad the labels too
                labels = accelerator.pad_across_processes(batch["labels"], dim=1, pad_index=tokenizer.pad_token_id)

            generated_tokens = accelerator.gather(generated_tokens).cpu().numpy()
            labels = accelerator.gather(labels).cpu().numpy()

            if args.ignore_pad_token_for_loss:
                # Replace -100 in the labels as we can't decode them.
                labels = np.where(labels != -100, labels, tokenizer.pad_token_id)
            
            decoded_inputs = tokenizer.batch_decode(batch['input_ids'], skip_special_tokens=True)
            decoded_preds = tokenizer.batch_decode(generated_tokens, skip_special_tokens=True)
            decoded_labels = tokenizer.batch_decode(labels, skip_special_tokens=True)
            decoded_preds, decoded_labels = postprocess_text(decoded_preds, decoded_labels)

        # If we are in a multiprocess environment, the last batch has duplicates
        if accelerator.num_processes > 1:
            if step == len(dataloader) - 1:
                decoded_preds = decoded_preds[: len(dataloader.dataset) - samples_seen]
                decoded_labels = decoded_labels[: len(dataloader.dataset) - samples_seen]
            else:
                samples_seen += len(decoded_labels)
        
        batch_eval_info = compute_intermediate_metrics(metric, decoded_inputs, decoded_preds, decoded_labels, example_table, os.path.join(args.output_dir, save_results_to), compile_folder, num_examples, tgt_lang=args.target_lang)
        num_compiled += batch_eval_info['num_compiled']
        num_tgt_compiled += batch_eval_info['num_tgt_compiled']
        num_em += batch_eval_info['num_em']
        num_erroneous_lines += batch_eval_info['num_erroneous_lines']
        num_examples += len(decoded_preds)

    return_dict = {
        'score': metric.compute()['score'],
        'em': num_em / num_examples,
        'loss': eval_loss / len(dataloader), 
        'example_table': example_table,
        'compiled': num_compiled / num_examples,
        'tgt_compiled': num_tgt_compiled / num_examples,
        'err_line_ratio': num_erroneous_lines / num_examples,
    }
    return return_dict

