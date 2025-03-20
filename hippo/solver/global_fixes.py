import re
import math

def update_lfbs(input, translation, lang):
    # Update the LFBs
    lfb_counter = 0
    curr_idx = 0
    updated_prediction = ""
    while ".LFB" in translation[curr_idx:]:
        lfb_idx = re.search(r"\.LFB[0-9]+", translation[curr_idx:]).start() + curr_idx
        updated_prediction += translation[curr_idx:lfb_idx]
        updated_prediction += f".LFB{lfb_counter}"
        old_lfb = translation[lfb_idx : translation.index(":\n", lfb_idx)]

        curr_idx = lfb_idx + len(old_lfb)

        leb_idx = re.search(r"\.LFE[0-9]+", translation[curr_idx:]).start() + curr_idx
        old_leb = translation[leb_idx : translation.index(":\n", leb_idx)]
        updated_prediction += translation[curr_idx:leb_idx]
        updated_prediction += f".LFE{lfb_counter}"

        curr_idx = leb_idx + len(old_leb)
        lfb_counter += 1
    updated_prediction += translation[curr_idx:]
    return updated_prediction

def find_eostr(string_with_string):
    string_with_string = string_with_string.splitlines(False)[0]
    start_quote_idx = re.search('"', string_with_string).start()
    return len(string_with_string)

def normalize_header(input, translation, lang):
    if lang == "arm":
        return re.sub(
            r"\.arch\s+armv8-a[\s\S]+?\.text",
            '.arch\tarmv8-a\n\t.file\t"file.c"\n\t.text',
            translation,
        )
    if lang == "risc":
        return re.sub(
            r"\.file[\s\S]+?\.text",
            '.file\t"file.c"\n\t.option pic\n\t.text',
            translation,
        )
    return translation

def update_labels(input, translation, lang):
    return translation # TODO

def get_fval_from_mem(mem_block):
    if re.search(re.compile('\.word\s+(\d+)\s+\.word\s+(\d+)'), mem_block):
        word_matches = re.search(re.compile('\.word\s+(\d+)\s+\.word\s+(\d+)'), mem_block)
        word0 = word_matches.group(1)
        word1 = word_matches.group(2)
        full_bin = '{0:032b}'.format(int(word1)) + '{0:032b}'.format(int(word0))
        sign = (-1) ** int(full_bin[0])
        exponent = 2**(int(full_bin[1:12], 2) - 1023)
        significand = 1 + sum(int(full_bin[i])*(2**(11-i)) for i in range(12, len(full_bin)))
        memval = sign * significand * exponent
        if memval < 0: return f'-{memval:e}'
        return f'{memval:e}'

def get_dval_from_mem(mem_block):
    if re.search(re.compile('\.dword\s+\d+'), mem_block):
        dword_matches = re.search(re.compile('\.dword\s+(\d+)'), mem_block)
        dword = dword_matches.group(1)
        memval = int(dword)
        return(str(memval))

def get_dval_from_ass(arm_block):
    dval = None
    for line in arm_block.split(';'):
        mov_match = re.search(r'mov\s+[a-z]+\d+,\s*(\d+)', line)
        movk_match = re.search(r'movk\s+[a-z]+\d+,\s*(0x[a-f\d]+),\s*lsl\s+(\d+)\s*$', line)
        if mov_match:
            assert dval is None
            dval = int(mov_match.group(1))
        elif movk_match:
            assert dval is not None
            dval += int(movk_match.group(1), 16) << int(movk_match.group(2))
    return str(dval)

def get_memblock_from_float(fval):
    fval = float(fval)
    #  fval = (-1)^sign * (1.mantissa) * 2^(exponent-1023)
    sign_bit = int(fval < 0)
    exp_b = int(math.log(abs(fval), 2))
    mant_b = int(((abs(fval) / (2 ** exp_b)) - 1) * (2 ** 52))
    exp_b += 1023
    full_bin = str(sign_bit) + '{0:011b}'.format(exp_b) + '{0:052b}'.format(mant_b)
    word1 = int(full_bin[:32], 2)
    word0 = int(full_bin[32:], 2)
    return f'.word {word0}\n\t.word {word1}'

def get_lc_mapping(assembly_code):
    lc_mapping = {}
    for lc_match in re.finditer(r'\n(\.LC\d+):', assembly_code):
        mem_label = lc_match.group(1)
        memblock = re.search(re.compile(f'{mem_label}:([\s\S]+?)(\.ident|\.align|\.section|\.text)'), assembly_code).group(1)
        lc_mapping[mem_label] = memblock.strip()
    return lc_mapping

def update_memblock(input, translation, lang):
    curr_idx = 0
    updated_prediction = ""
    if lang == 'arm':
        while "<<.LC" in translation[curr_idx:]:
            lc_match = re.search(re.compile(r"<<(.+?)>>"), translation[curr_idx:])
            annotation_idx = lc_match.start() + curr_idx
            updated_prediction += translation[curr_idx:annotation_idx]
            mem_label = lc_match.group(1)
            memblock = re.search(re.compile(f'{mem_label}:([\s\S]+?)(\.ident|\.align|\.section|\.text)'), input).group(1)
            memval = get_fval_from_mem(memblock.strip())
            updated_prediction += memval
            curr_idx = annotation_idx + len(lc_match.group(0))
        updated_prediction += translation[curr_idx:]
    elif lang == 'risc':
        lc_mapping = get_lc_mapping(translation)
        src_lc_mapping = get_lc_mapping(input)
        new_lcs = []
        while "<<.LC" in translation[curr_idx:]:
            lc_match = re.search(re.compile(r"<<(\.LC\d+):(.+?)>>"), translation[curr_idx:])
            annotation_idx = lc_match.start() + curr_idx
            updated_prediction += translation[curr_idx:annotation_idx]
            src_memblock_match = re.search(r'\.LC\d+', lc_match.group(2))
            src_fmov_match = re.search(r'fmov\s+[a-z]+\d*,\s+(-?\d+\.\d+e[\+-]\d+)', lc_match.group(2))
            src_mov_match = re.search(r'mov', lc_match.group(2))
            if src_memblock_match:
                src_mem_label = src_memblock_match.group(0)
                src_memblock = src_lc_mapping[src_mem_label]
                found_match = False
                for pred_lc, pred_lc_memblock in lc_mapping.items():
                    if pred_lc_memblock == src_memblock: 
                        updated_prediction += pred_lc
                        found_match = True
                        break
                if not found_match:
                    new_lc_idx = len(lc_mapping)
                    new_lc = f'.LC{new_lc_idx}'
                    while new_lc in lc_mapping:
                        new_lc_idx += 1
                        new_lc = f'.LC{new_lc_idx}'
                    lc_mapping[new_lc] = src_memblock
                    new_lcs.append(f'{new_lc}:\n\t{src_memblock}')
                    updated_prediction += new_lc
            elif src_fmov_match:
                fval = src_fmov_match.group(1)
                f_memblock = get_memblock_from_float(fval)
                found_match = False
                for pred_lc, pred_lc_memblock in lc_mapping.items():
                    if pred_lc_memblock == f_memblock: 
                        updated_prediction += pred_lc
                        found_match = True
                        break
                if not found_match:
                    new_lc_idx = len(lc_mapping)
                    new_lc = f'.LC{new_lc_idx}'
                    while new_lc in lc_mapping:
                        new_lc_idx += 1
                        new_lc = f'.LC{new_lc_idx}'
                    lc_mapping[new_lc] = f_memblock
                    new_lcs.append(f'{new_lc}:\n\t{f_memblock}')
                    updated_prediction += new_lc
            elif src_mov_match:
                # TODO this could (and prob should?) be solved using Rosette instead of this sep function
                dval = get_dval_from_ass(lc_match.group(2))
                d_memblock = f'.dword {dval}'
                found_match = False
                for pred_lc, pred_lc_memblock in lc_mapping.items():
                    if pred_lc_memblock == d_memblock: 
                        updated_prediction += pred_lc
                        found_match = True
                        break
                if not found_match:
                    new_lc_idx = len(lc_mapping)
                    new_lc = f'.LC{new_lc_idx}'
                    while new_lc in lc_mapping:
                        new_lc_idx += 1
                        new_lc = f'.LC{new_lc_idx}'
                    lc_mapping[new_lc] = d_memblock
                    new_lcs.append(f'{new_lc}:\n\t{d_memblock}')
                    updated_prediction += new_lc
            else: assert False, f"Not handled: {lc_match}"
            curr_idx = annotation_idx + len(lc_match.group(0))
        updated_prediction += translation[curr_idx:]
        new_lcs = '\n'.join(new_lcs) + '\n'
        updated_prediction += '\n\t.section\t.rodata\n' + new_lcs
    return updated_prediction


global_fixes = [update_lfbs, update_labels, update_memblock, normalize_header]
