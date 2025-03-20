import glob
import re
import os
import json
import argparse
import torch

from transformers import AutoTokenizer, AutoModelForCausalLM, AutoModelForSeq2SeqLM, AutoConfig
from peft import PeftModel
from guess_and_sketch.assembly_regexes import arm_cutoff_insns, risc_cutoff_insns
from training.ft_model import prepare_sample_text


# This file does the alignment identification from cross-attention. It expects 
#  - assembly files compiled under the --verbose flag --> to extract character-level true alignment
#  - a trained model with attention --> extract learned alignment
#  - subsequence identifier --> extract pure basic blocks boundaries from tokens
# Then the file can obtain
#   - the reduction of attention that produces greatest alignment with the true alignment
#   - the resulting F1 alignment
# Note: this is only written for and tested with arm / risc language
device = torch.device("cuda" if torch.cuda.is_available() else "cpu")

def get_args():
    parser = argparse.ArgumentParser()
    parser.add_argument("--orig_model_path", type=str, default="bigcode/starcoderbase")
    parser.add_argument("--model_path", type=str, default="results/starcoder_chunk_4096")
    parser.add_argument("--is_enc_dec", default=False, action="store_true")
    parser.add_argument("--tokenizer_name", type=str, default="bigcode/starcoderbase") 
    parser.add_argument("--folder", type=str, default='data/project-euler-c') 
    parser.add_argument("--save_folder", type=str, default='align/proj_euler_attentions') 
    parser.add_argument("--interactive", default=False, action="store_true")
    parser.add_argument("--find_best_reduction", default=False, action="store_true")
    parser.add_argument("--get_maximal_norm", default=False, action="store_true")

    parser.add_argument("--max_length", type=int, default=4096) 

    parser.add_argument("--source_lang", type=str, default="arm")
    parser.add_argument("--target_lang", type=str, default="risc")

    return parser.parse_args()


### FUNCTIONS TO GET TRUE BLOCK ALIGNMENT ### 

def clean_assembly(arm_block, risc_block):
    def clean_block(block, comment_token):
        regex_comments_full_line = re.compile(f'\n{comment_token}.*')
        cleaned_block = re.sub(regex_comments_full_line, "", block)
        regex_comments_partline = re.compile(f'{comment_token}.*?\n')
        cleaned_block = re.sub(regex_comments_partline, "\n", cleaned_block)
        return cleaned_block.replace('\n\n', '\n')
    cleaned_arm_block = clean_block(arm_block, "//")
    cleaned_risc_block = clean_block(risc_block, "#")
    return cleaned_arm_block, cleaned_risc_block

def verbose_files_to_alignments(filepath):
    alignments = []
    for c_file in glob.glob(f'{filepath}/original_c/*.c'):
        file_regex = re.compile(f'{filepath}/original_c/(.*)\.c')
        match_groups = re.match(file_regex, c_file)
        filename = match_groups.group(1)
        arm_verbose_input = f'{filepath}/verbose_arm/{filename}.verbose_arm.s'
        risc_verbose_input = f'{filepath}/verbose_risc/{filename}.verbose_risc.s'
        if not os.path.exists(arm_verbose_input) or not os.path.exists(risc_verbose_input): continue
        full_arm = open(arm_verbose_input, 'r').read()
        full_risc = open(risc_verbose_input, 'r').read()

        file_alignment = {
            "filename": f'{filename}',
            "cleaned_arm_filename": f'{filepath}/verbose_arm/{filename}.arm.s',
            "cleaned_risc_filename": f'{filepath}/verbose_risc/{filename}.risc.s',
            "char_alignment": [], # list of block alignments. length = num basic blocks; elements: tuples of end idx of aligned block (arm, risc); in-order.
        }
        arm_cleaned, risc_cleaned = "", ""
        arm_idx, risc_idx = 0, 0
        done_with_file = False
        while not done_with_file:
            if f"\n// {filename}" in full_arm[arm_idx:]:
                if full_arm[arm_idx:].startswith('//'):
                    arm_idx = arm_idx + full_arm[arm_idx:].index('\n') + 1 # exclude the first line if it's a comment
                end_idx = arm_idx + full_arm[arm_idx:].index(f"\n// {filename}") + 1 # include the newline
                arm_block = full_arm[arm_idx:end_idx]
                arm_idx = end_idx 
            else:
                if full_arm[arm_idx:].startswith('//'):
                    arm_idx = arm_idx + full_arm[arm_idx:].index('\n') + 1 
                arm_block = full_arm[arm_idx:]
                done_with_file = True
            
            if f"\n# {filename}" in full_risc[risc_idx:]:
                if full_risc[risc_idx:].startswith('#'):
                    risc_idx = risc_idx + full_risc[risc_idx:].index('\n') + 1 # exclude the first line if it's a comment
                end_idx = risc_idx + full_risc[risc_idx:].index(f"\n# {filename}") + 1 # include the newline
                risc_block = full_risc[risc_idx:end_idx]
                risc_idx = end_idx 
            else:
                if full_risc[risc_idx:].startswith('#'):
                    risc_idx = risc_idx + full_risc[risc_idx:].index('\n') + 1 
                risc_block = full_risc[risc_idx:]
                assert done_with_file
            
            if arm_block.startswith(f'// {filename}'):
                assert arm_block[3:arm_block.index('\n')] == risc_block[2:risc_block.index('\n')], f'`{arm_block[3:]}`\n`{risc_block[2:]}`'
            
            cleaned_arm_block, cleaned_risc_block  = clean_assembly(arm_block, risc_block)
            arm_cleaned += cleaned_arm_block
            risc_cleaned += cleaned_risc_block
            file_alignment['char_alignment'].append((len(arm_cleaned), len(risc_cleaned)))
        
        alignments.append(file_alignment)
        with open(file_alignment["cleaned_arm_filename"], 'w') as wf:
            wf.write(arm_cleaned)
        with open(file_alignment["cleaned_risc_filename"], 'w') as wf:
            wf.write(risc_cleaned)
        print(filename)
    return alignments

def fn_char_to_fn_tok_alignments(fn_char_alignments, arm_tokenized_char_to_tok, risc_tokenized_char_to_tok):
    return [(arm_tokenized_char_to_tok[arm_block_end], risc_tokenized_char_to_tok[risc_block_end]) for arm_block_end, risc_block_end in fn_char_alignments]

def file_char_to_fn_tok_alignments(char_alignments, arm, risc, tokenizer):
    fn_alignments = {None: {'arm': "", 'risc': "", 'char_alignment': None}} # dict{fn_name: dict{'arm': string, 'risc': string, 'char_alignment': list[tuples(arm_char_idx, risc_char_idx)]} }

    arm_lines = arm.splitlines(True)
    risc_lines = risc.splitlines(True)

    curr_function = None
    arm_line_idx, risc_line_idx = 0, 0
    arm_char_offset, risc_char_offset = 0, 0
    while arm_line_idx < len(arm_lines) and risc_line_idx < len(risc_lines):
        # scan until start of chunk for both
        if not curr_function:
            in_arm_chunk, in_risc_chunk = False, False
            while not in_arm_chunk and arm_line_idx < len(arm_lines):
                arm_l = arm_lines[arm_line_idx].strip()
                if arm_l and '.' not in arm_l and arm_l[-1] == ':':
                    in_arm_chunk = True
                    curr_function = arm_l[:-1]
                    fn_alignments[None]['arm'] += f"{{{curr_function}}}"
                    fn_alignments[curr_function] = {'arm': arm_lines[arm_line_idx]}
                else: 
                    fn_alignments[None]['arm'] += arm_lines[arm_line_idx]
                    arm_char_offset += len(arm_lines[arm_line_idx])
                arm_line_idx += 1
            while not in_risc_chunk and risc_line_idx < len(risc_lines):
                risc_l = risc_lines[risc_line_idx].strip()
                if risc_l and '.' not in risc_l and risc_l[-1] == ':':
                    in_risc_chunk = True
                    assert risc_l[:-1] == curr_function
                    fn_alignments[curr_function]['risc'] = risc_lines[risc_line_idx]
                    fn_alignments[None]['risc'] += f"{{{curr_function}}}"
                else: 
                    fn_alignments[None]['risc'] += risc_lines[risc_line_idx]
                    risc_char_offset += len(risc_lines[risc_line_idx])
                risc_line_idx += 1
            
        # if in fn chunk, scan until end of chunk for both
        else: 
            done_arm_chunk, done_risc_chunk = False, False
            while not done_arm_chunk:
                arm_l = arm_lines[arm_line_idx].strip()
                fn_alignments[curr_function]['arm'] += arm_lines[arm_line_idx]
                if arm_l.strip() == '.cfi_endproc': done_arm_chunk = True
                arm_line_idx += 1
            while not done_risc_chunk:
                risc_l = risc_lines[risc_line_idx].strip()
                fn_alignments[curr_function]['risc'] += risc_lines[risc_line_idx]
                if risc_l.strip() == 'jr	ra': done_risc_chunk = True
                risc_line_idx += 1
            arm_tokenized = tokenizer(fn_alignments[curr_function]['arm'], return_offsets_mapping=True)
            risc_tokenized = tokenizer(fn_alignments[curr_function]['risc'], return_offsets_mapping=True)
            fn_alignments[curr_function]['arm_tokenized'] = arm_tokenized.input_ids
            fn_alignments[curr_function]['risc_tokenized'] = risc_tokenized.input_ids

            arm_tokenized_char_to_tok = {end: i for i, (_, end) in enumerate(arm_tokenized['offset_mapping'])}
            risc_tokenized_char_to_tok = {end: i for i, (_, end) in enumerate(risc_tokenized['offset_mapping'])}

            fn_alignments[curr_function]['char_alignment'] = [
                (arm_offs - arm_char_offset, risc_offs-risc_char_offset) for (arm_offs, risc_offs) in char_alignments if 
                ((arm_offs in range(arm_char_offset, arm_char_offset + len(fn_alignments[curr_function]['arm']))) and
                (risc_offs in range(risc_char_offset, risc_char_offset + len(fn_alignments[curr_function]['risc']))))
            ]

            if (len(fn_alignments[curr_function]['arm']), len(fn_alignments[curr_function]['risc'])) not in fn_alignments[curr_function]['char_alignment']:
                fn_alignments[curr_function]['char_alignment'].append((len(fn_alignments[curr_function]['arm']), len(fn_alignments[curr_function]['risc'])))
                
            fn_alignments[curr_function]['tokenized_alignment'] = fn_char_to_fn_tok_alignments(fn_alignments[curr_function]['char_alignment'], arm_tokenized_char_to_tok, risc_tokenized_char_to_tok)
            
            arm_char_offset += len(fn_alignments[curr_function]['arm'])
            risc_char_offset += len(fn_alignments[curr_function]['risc'])
            curr_function = None

    return fn_alignments

def chunk_and_tokenize_alignments(char_alignments, tokenizer):

    alignments = []
    for problem in char_alignments:
        example_alignment = dict(problem)

        arm = open(problem['cleaned_arm_filename'], 'r').read()
        risc = open(problem['cleaned_risc_filename'], 'r').read()

        example_alignment['functions'] = file_char_to_fn_tok_alignments(problem['char_alignment'], arm, risc, tokenizer)

        alignments.append(example_alignment)

    return alignments 

def get_true_alignment_matrix(output_seq_tokenized, input_seq_tokenized, tokenizer, true_aligned_blocks):
    true_alignments_matrix = torch.zeros((len(output_seq_tokenized), len(input_seq_tokenized)))
    tgt_line_end_idxes = get_line_end_tokenized_indices(output_seq_tokenized, tokenizer)
    src_line_end_idxes = get_line_end_tokenized_indices(input_seq_tokenized, tokenizer)
    last_src_idx, last_tgt_idx = 0, 0
    for (arm_block_end, risc_block_end) in true_aligned_blocks:
        for oi in range(last_tgt_idx, risc_block_end):
            for ii in range(last_src_idx, arm_block_end):
                true_alignments_matrix[oi][ii] = 1
        last_tgt_idx = risc_block_end
        last_src_idx = arm_block_end
    return true_alignments_matrix

### FUNCTIONS TO GET PURE BASIC BLOCKS ### 

def get_line_end_tokenized_indices(tokenized_sequence, tokenizer):
    if type(tokenized_sequence[0]) == list:
        tokenized_sequence = tokenized_sequence[0]
    decoded_seq = tokenizer.decode(
        tokenized_sequence, skip_special_tokens=False
    )
    toks_of_sequence = tokenizer.convert_ids_to_tokens(tokenized_sequence)
    char_to_tokenized_tok = {
        len(tokenizer.decode(tokenized_sequence[: idx + 1])): idx
        for idx in range(len(tokenized_sequence))
    }

    line_end_idxes = []
    reconstruct = ""
    seq_lines = decoded_seq.splitlines(True)
    for line_i,line in enumerate(seq_lines):
        reconstruct += line
        if line[-1] == "\n":
            char_idx = len(reconstruct) - 1
        else:
            char_idx = len(reconstruct)
        while char_idx not in char_to_tokenized_tok:
            char_idx += 1
            if char_idx > max(char_to_tokenized_tok.keys()):
                return line_end_idxes
        line_end_idxes.append(char_to_tokenized_tok[char_idx] + 1)  # +1 bc endidx

    return line_end_idxes

def get_block(idx, toked, lang, tokenizer, line_end_idxes):
    # returns (start_tok, end_tok)
    if (type(toked) != list) or (type(toked[0]) != int): import pdb; pdb.set_trace()

    start_tok, end_tok = None, None
    # If it's a memory load, return just that line.
    line_cursor = sum([1 if lei <= idx else 0 for lei in line_end_idxes])  
    line_start_tok = line_end_idxes[line_cursor - 1] if line_cursor > 0 else 0
    line_end_tok = line_end_idxes[line_cursor] if line_cursor < len(line_end_idxes) else len(toked)
    line = tokenizer.decode(
        toked[line_start_tok:line_end_tok], skip_special_tokens=True
    )
    if lang == 'risc':
        lla_match = re.search(re.compile('lla\s+([a-z]+\d*),\s*(.LC\d+)'), line)
        if lla_match: return line_start_tok, line_end_tok

    if lang == "arm": cutoff_insns = arm_cutoff_insns
    elif lang == "risc": cutoff_insns = risc_cutoff_insns

    # search up
    while line_cursor >= 0:
        line_start_tok = line_end_idxes[line_cursor - 1] if line_cursor > 0 else 0
        line_end_tok = (
            line_end_idxes[line_cursor]
            if line_cursor < len(line_end_idxes)
            else len(toked)
        )
        new_line = tokenizer.decode(
            toked[line_start_tok:line_end_tok], skip_special_tokens=True
        )
        if len(new_line) == 0 or new_line[-1] != "\n":
            new_line += "\n"  # add a newline to end to make regex matching happy
        if len(new_line.strip()) == 0:
            line_cursor -= 1
            continue
        # If we reach a cutoff insn, cut it off in front.
        if any(
                re.search(start_regex, new_line) is not None
                for start_regex in cutoff_insns
        ):
            start_tok = line_end_tok
            if start_tok > idx:
                return None
            break
        line_cursor -= 1
    if start_tok is None:
        if line_cursor == -1:
            start_tok = 0
        else:
            return None

    # search down
    line_cursor = sum([1 if lei <= idx else 0 for lei in line_end_idxes]) + 1
    while line_cursor < len(line_end_idxes):
        line_start_tok = line_end_idxes[line_cursor - 1] if line_cursor > 0 else 0
        line_end_tok = (
            line_end_idxes[line_cursor]
            if line_cursor < len(line_end_idxes)
            else len(toked)
        )
        new_line = tokenizer.decode(
            toked[line_start_tok:line_end_tok], skip_special_tokens=True
        ).strip()
        if len(new_line) == 0:
            line_cursor += 1
            continue
        if any(
            re.search(start_regex, new_line) is not None
            for start_regex in cutoff_insns
        ):
            end_tok = line_start_tok
            if end_tok < idx:
                return None
            break
        line_cursor += 1
    if end_tok is None:
        if line_cursor == len(line_end_idxes):
            end_tok = len(toked)
        else:
            return None
    return start_tok, end_tok


### FUNCTIONS TO GET ATTENTION FROM MODEL ###

def see_aligned_blocks(alignment_matrix, out_seq, in_seq, tokenizer, tgt_lang, tgt_line_end_idxes, is_true=False):
    out_idx, in_idx = 0, 0
    while alignment_matrix[out_idx:,in_idx:].sum() > 0:
        in_idx = alignment_matrix[out_idx:,in_idx:].nonzero(as_tuple=True)[1][0] + in_idx
        out_idx = alignment_matrix[out_idx:,in_idx:].nonzero(as_tuple=True)[0][0] + out_idx

        if is_true: 
            end_out_idx = out_idx + int(alignment_matrix[:,in_idx].sum().item())
            out_block = (out_idx, end_out_idx)
            end_in_idx = in_idx + int(alignment_matrix[out_idx].sum().item())
            out_idx = end_out_idx
        else: 
            out_block = get_block(out_idx, out_seq, tgt_lang, tokenizer, tgt_line_end_idxes)
            end_in_idx = in_idx + int(alignment_matrix[out_idx].sum().item())
            out_idx += 1
            if out_block is None: continue
        print(f'OUT:')
        chunk_out_seq = out_seq[out_block[0]:out_block[1]]
        print(tokenizer.decode(chunk_out_seq))
        chunk_in_seq = in_seq[in_idx:end_in_idx]
        print(f'IN:')
        print(tokenizer.decode(chunk_in_seq))
        cont = input('continue? (n to exit)')
        if cont == 'n': break

def get_attention(model, input_ids, num_layers, num_heads, labels=None, is_enc_dec=False, start_idxes_and_lens=None):
    batch = 0
    in_start_idx, in_seq_len, out_start_idx, out_seq_len = start_idxes_and_lens
    if is_enc_dec:
        if type(input_ids) != torch.tensor: input_ids = torch.tensor(input_ids)
        if type(labels) != torch.tensor: labels = torch.tensor(labels)
        
        model_out = model(input_ids, labels=labels, output_attentions=True, return_dict=True)
        attns = model_out.cross_attentions
    else:
        model_out = model(input_ids, output_attentions=True, return_dict=True)
        attns = model_out.attentions
    layer_attentions = []
    for layer in range(num_layers):
        head_attentions = []
        for head in range(num_heads):
            head_alignment = torch.zeros((out_seq_len, in_seq_len))
            for i in range(out_seq_len):
                head_alignment[i,:] = attns[layer][batch][head][i+out_start_idx,in_start_idx:in_start_idx+in_seq_len]
            head_attentions.append(head_alignment)
        layer_attentions.append(head_attentions)
    return layer_attentions

def grid_search_reduction(attention, true_alignment_matrix, src_toked, tgt_toked, src_lang, tgt_lang, tokenizer, interactive=False, verbose=False):

    def get_aligned_indices_from_matrix(attn_matrix):
        pred_idx_alignments = torch.zeros((len(tgt_toked), len(src_toked)))
        pred_block_alignments = torch.zeros((len(tgt_toked), len(src_toked)))
        for out_idx in range(attn_matrix.shape[0]):
            in_idx = attn_matrix[out_idx].argmax()
            pred_idx_alignments[out_idx][in_idx] = 1
            in_block = get_block(in_idx, src_toked, src_lang, tokenizer, src_line_end_idxes)
            if in_block:
                pred_block_alignments[out_idx, in_block[0]:in_block[1]] = 1
                
        return pred_idx_alignments, pred_block_alignments

    def get_alignment_f1(pred_alignments):
        tp, fp, fn = 0, 0, 0
        tp = (true_alignments_matrix * pred_alignments).sum().item()
        fp = torch.where((pred_alignments-true_alignments_matrix)>0, 1, 0).sum().item()
        fn = torch.where((true_alignments_matrix-pred_alignments)>0, 1, 0).sum().item()
        return tp, fp, fn
    
    
    alignment_scores = {}
    if interactive:
        print('TRUE')
        see_aligned_blocks(true_alignments_matrix, tgt_toked, src_toked, tokenizer, tgt_lang, tgt_line_end_idxes, is_true=True)
    max_idxmax, max_f1 = 0, 0.0
    layer_maxidxmax, layer_maxf1 = None, None
    for layer, layer_attns in enumerate(attention):
        alignment_scores[layer] = {}
        for head, attn_matrix in enumerate(layer_attns):
            if interactive: print(f'PRED LAYER {layer} HEAD {head}')
            pred_idx_alignments, pred_block_alignments = get_aligned_indices_from_matrix(attn_matrix)
            if interactive and pred_block_alignments.sum() > 0:
                see_aligned_blocks(pred_block_alignments, tgt_toked, src_toked, tokenizer, tgt_lang, tgt_line_end_idxes)
            tp, fp, fn = get_alignment_f1(pred_block_alignments)
            precision = tp / (tp + fp) if (tp + fp) != 0 else 0
            recall = tp / (tp + fn) if (tp + fn) != 0 else 0
            f1 = 2 * precision * recall / (precision + recall) if (precision + recall != 0) else 0
            alignment_scores[layer][head] = {'f1': f1}
            if f1 > max_f1:
                max_f1 = f1
                layer_maxf1 = f"Layer {layer} head {head}"
            tp, fp, _ = get_alignment_f1(pred_idx_alignments)
            precision = tp / (tp + fp) if (tp + fp) != 0 else 0
            alignment_scores[layer][head]['precision'] = precision
            if precision > max_idxmax:
                max_idxmax = precision
                layer_maxidxmax = f"Layer {layer} head {head}"
            if verbose: print(f"Layer {layer}, head {head}:\n\tidxmax precision: {precision}; block f1: {f1}")
        pred_idx_alignments, pred_block_alignments = get_aligned_indices_from_matrix(torch.mean(torch.stack(layer_attns), dim=0))
        tp, fp, fn = get_alignment_f1(pred_block_alignments)
        precision = tp / (tp + fp) if (tp + fp) != 0 else 0
        recall = tp / (tp + fn) if (tp + fn) != 0 else 0
        f1 = 2 * precision * recall / (precision + recall) if (precision + recall != 0) else 0
        alignment_scores[layer]['avg'] = {'f1': f1}
        if f1 > max_f1:
            max_f1 = f1
            layer_maxf1 = f"Layer {layer} head avg"
        tp, fp, _ = get_alignment_f1(pred_idx_alignments)
        precision = tp / (tp + fp) if (tp + fp) != 0 else 0
        alignment_scores[layer]['avg']['precision'] = precision
        if precision > max_idxmax:
            max_idxmax = precision
            layer_maxidxmax = f"Layer {layer} head avg"
        if verbose: print(f"Layer {layer}, head avg:\n\tidxmax precision: {precision}; block f1: {f1}")

    print(f'Max f1: {max_f1} at {layer_maxf1}')
    print(f'Max idxmax acc: {max_idxmax} at {layer_maxidxmax}')
    print(f'==============')
    return alignment_scores


### FUNCTIONS TO GET NORM MAXIMIZE OF SUBSEQUENCES

def get_p_r(max_norm_alignment, true_alignments_matrix):
    tp = (true_alignments_matrix * max_norm_alignment).sum().item()
    fp = torch.where((true_alignments_matrix-true_alignments_matrix)>0, 1, 0).sum().item()
    fn = torch.where((true_alignments_matrix-max_norm_alignment)>0, 1, 0).sum().item()
    return tp, fp, fn
    
def get_max_norm_alignment(reduced_attention, src_toked, tgt_toked, src_lang, tgt_lang, tokenizer):

    # (1) get all subsequences of input and of output
    def get_subseqs(toked_seq, line_end_idxes, lang):
        subseqs = []
        idx = 0
        while idx < len(toked_seq):
            block = get_block(idx, toked_seq, lang, tokenizer, line_end_idxes)
            idx += 1
            if block is None: continue
            subseqs.append(block)
        return subseqs

    tgt_line_end_idxes = get_line_end_tokenized_indices(tgt_toked, tokenizer)
    src_line_end_idxes = get_line_end_tokenized_indices(src_toked, tokenizer)
    out_subseqs = get_subseqs(tgt_toked, tgt_line_end_idxes, tgt_lang)
    in_subseqs = get_subseqs(src_toked, src_line_end_idxes, src_lang)

    # (2) loop through to find maximal norm
    max_norm_matrix = torch.zeros((len(tgt_toked), len(src_toked)))
    for (out_start, out_end) in out_subseqs:
        maximal_in = None
        max_norm = 0
        for (in_start, in_end) in in_subseqs:
            fro_norm = torch.linalg.matrix_norm(reduced_attention[out_start:out_end,in_start:in_end]).item()
            if fro_norm > max_norm:
                maximal_in = (in_start, in_end)
                max_norm = fro_norm
        assert maximal_in is not None
        max_norm_matrix[out_start:out_end,maximal_in[0]:maximal_in[1]] = 1
    
    return max_norm_matrix

def main():
    args = get_args()
    tokenizer = AutoTokenizer.from_pretrained(args.tokenizer_name)
    print('tokenizer loaded')
    if args.is_enc_dec:
        config = AutoConfig.from_pretrained(args.orig_model_path)
        config.vocab_size = len(tokenizer)
        config.max_position_embeddings = args.max_length
        model = AutoModelForSeq2SeqLM.from_pretrained(args.model_path, config=config, device_map='auto').to(device)
        num_layers = config.decoder_layers
        num_heads = config.decoder_attention_heads
    else:
        model = AutoModelForCausalLM.from_pretrained(args.orig_model_path, load_in_8bit=True, trust_remote_code=True)
        model = PeftModel.from_pretrained(model, args.model_path)
        if 'starcoder' in args.orig_model_path:
            num_layers = model.config.n_layer
            num_heads = model.config.n_head
        elif 'lama' in args.orig_model_path:
            num_layers = model.config.num_hidden_layers
            num_heads = model.config.num_attention_heads
    print('model loaded')

    if not os.path.exists(args.save_folder): os.mkdir(args.save_folder)

    # Get true alignment
    save_true_alignments_to = os.path.join(args.save_folder, f'{os.path.basename(args.folder)}_alignments_{os.path.basename(args.tokenizer_name)}.json')
    if os.path.exists(save_true_alignments_to):
        true_tokenized_alignments_chunked = json.load(open(save_true_alignments_to, 'r'))
    else:
        true_alignments = verbose_files_to_alignments(args.folder)
        true_tokenized_alignments_chunked = chunk_and_tokenize_alignments(true_alignments, tokenizer)
        with open(save_true_alignments_to, 'w') as wf: json.dump(true_tokenized_alignments_chunked, wf, indent=4)

    alignment_scores = {}
    alignment_file = os.path.join(args.save_folder, 'alignment_scores.json')
    if os.path.exists(alignment_file): alignment_scores = json.load(open(alignment_file))
    precs, recs, f1s = [], [], []
    for problem in true_tokenized_alignments_chunked:
        print(f'===================================')
        print(problem['filename'])
        if problem['filename'] not in alignment_scores: alignment_scores[problem['filename']] = {}
        for fn_name, fn_dict in problem['functions'].items():
            if fn_name in {None, 'null'}: continue
            print(f'==============')
            print(fn_name)

            # Extract attention tensors from trained model
            save_attention_to = os.path.join(args.save_folder, f'{problem["filename"]}_{fn_name}_xattn.pt')
            if os.path.exists(save_attention_to): 
                attention = torch.load(save_attention_to)
                input_seq_tokenized = fn_dict[f'{args.source_lang}_tokenized']
                output_seq_tokenized = fn_dict[f'{args.target_lang}_tokenized']
            else:
                input_seq_tokenized = fn_dict[f'{args.source_lang}_tokenized']
                output_seq_tokenized = fn_dict[f'{args.target_lang}_tokenized']
                if args.is_enc_dec:
                    input_ids = torch.tensor([input_seq_tokenized])
                    output_ids = torch.tensor([output_seq_tokenized])
                    start_idxes_and_lens = (0, input_ids.shape[-1], 0, output_ids.shape[-1])
                else:
                    input_ids, start_idxes_and_lens = prepare_sample_text(tokenizer, {args.source_lang: fn_dict[args.source_lang], args.target_lang: fn_dict[args.target_lang]}, args.source_lang, args.target_lang)
                    output_ids = None
                if input_ids.shape[-1] > args.max_length: continue
                attention = get_attention(model, input_ids, num_layers, num_heads, labels=output_ids, is_enc_dec=args.is_enc_dec, start_idxes_and_lens=start_idxes_and_lens)
                torch.save(attention, save_attention_to)

            true_alignment_matrix = get_true_alignment_matrix(output_seq_tokenized, input_seq_tokenized, tokenizer, fn_dict['tokenized_alignment'])

            if args.find_best_reduction:
                # Identify best reduction to get learned alignment
                if fn_name in alignment_scores[problem['filename']]: continue
                alignment_scores[problem['filename']][fn_name] = grid_search_reduction(attention, true_alignment_matrix, input_seq_tokenized, output_seq_tokenized, args.source_lang, args.target_lang, tokenizer, interactive=args.interactive) 
                with open(alignment_file, 'w') as f:
                    json.dump(alignment_scores, f, indent=4)
            
            if args.get_maximal_norm:
                # Collect matrix of maximal norm
                save_max_norm_align_to = os.path.join(args.save_folder, f'{problem["filename"]}_{fn_name}_maxnorm.pt')
                if os.path.exists(save_max_norm_align_to): 
                    max_norm_alignment = torch.load(save_max_norm_align_to)
                    torch.save(max_norm_alignment, save_max_norm_align_to)
                else:
                    layer_num = 10
                    reduced_attention = torch.mean(torch.stack(attention[layer_num]), dim=0)
                    max_norm_alignment = get_max_norm_alignment(reduced_attention, input_seq_tokenized, output_seq_tokenized, args.source_lang, args.target_lang, tokenizer)
                tp, fp, fn = get_p_r(max_norm_alignment, true_alignment_matrix)
                prec = tp/(tp+fp)
                rec = tp/(tp+fn)
                f1 = 2*(prec*rec)/(prec+rec)
                precs.append(prec)
                recs.append(rec)
                f1s.append(f1)
                print(f'prec: {prec}\t recall: {rec}')
    print(f'avg prec: {sum(precs)/len(precs)}\tavg recall: {sum(recs)/len(recs)}\tavg f1: {sum(f1s)/len(f1s)}')
    
    avg_scores = {str(l): {str(h): {'f1': 0, 'precision': 0} for h in range(num_heads)} for l in range(num_layers)}
    num_fns = 0
    for _, p_dict in alignment_scores.items():
        for _, fn_dict in p_dict.items():
            for ln, lh_dict in fn_dict.items():
                for hn, info in lh_dict.items():
                    if ln not in avg_scores: avg_scores[ln] = {}
                    if hn not in avg_scores[ln]: avg_scores[ln][hn] = {'f1': 0, 'precision': 0}
                    avg_scores[ln][hn]['f1'] += info['f1']
                    avg_scores[ln][hn]['precision'] += info['precision']
            num_fns += 1
    avg_scores = {ln: {hn: {key: value / num_fns for key, value in h_info.items()} for hn, h_info in l_info.items()} for ln, l_info in avg_scores.items()}
    alignment_scores['averaged'] = avg_scores
    with open(alignment_file, 'w') as f: json.dump(alignment_scores, f, indent=4)

if __name__ == '__main__':
    main() 

