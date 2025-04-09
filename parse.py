import re
import os
import sys
import glob

input_folder = sys.argv[1]
outfile = sys.argv[2]
extension = 'c' #sys.argv[3]

def extract(inp, file_modifiers=[lambda x: x]):
    sections = {}
    cloze = ""
    in_chunk = False
    program = open(inp, 'r')
    for l in program:
        l2 = l.strip()
        # if it's a .LC# line or a global function name label line
        # if l2 and l2[0] not in {'.', '_'} and '.' not in l2 and l2[-1] == ":":
        if l2 and l2[0] not in {'.'} and '.' not in l2 and l2[-1] == ":" and not l2[:-1].isdigit():
            in_chunk = True
            section = l2[:-1]
            cloze += f"{{{section}}}"
            sections[section] = ""
        if in_chunk:
            sections[section] += l
            if l2.strip() in {".cfi_endproc", "jr	ra"}:
                in_chunk = False
        else:
            cloze += l
    return sections, cloze

def remove_comments(code, comment_prefix="//"):
    comment_regex = re.compile(f'{comment_prefix}.*\n')
    return re.sub(comment_regex, '', code)

def remove_extra_space(ass):
    return re.sub(r',\s+', ',', ass.replace('\n\t', '\n')).strip()

def remove_rawstrings(ass): 
    curr_idx = 0
    updated_prediction = ""
    while '.string' in ass[curr_idx:]:
        str_idx = re.search(r'\.string', ass[curr_idx:]).start() + curr_idx
        updated_prediction += ass[curr_idx:str_idx+len('.string')] + " RAW"
        old_line = ass[str_idx:ass.index('\n', str_idx)]

        curr_idx = str_idx + len(old_line)

    updated_prediction += ass[curr_idx:]
    return updated_prediction    

import json
out = open(outfile, "w")

for f in glob.glob(os.path.join(input_folder, f"*.{extension}")):
    print(f)
    base_name = os.path.splitext(os.path.basename(f))[0]  # Extract filename without extension
    
    # Look for assembly files in assembly_output/
    f1 = os.path.join(input_folder, "assembly_output", f"{base_name}.risc.s")
    f2 = os.path.join(input_folder, "assembly_output", f"{base_name}.arm.s")
    f3 = os.path.join(input_folder, "assembly_output", f"{base_name}.x86.s") 

    # Track missing files
    missing_files = [arch for arch, path in {"risc": f1, "arm": f2, "x86": f3}.items() if not os.path.exists(path)]
    if len(missing_files) == 3:
        print(f"Skipping {f} (Missing risc, arm, and x86)")
        continue

    if "risc" in missing_files:
        print(f"Skipping {f} (Missing {f1})")
    if "arm" in missing_files:
        print(f"Skipping {f} (Missing {f2})")
    if "x86" in missing_files:
        print(f"Skipping {f} (Missing {f3})")

    # Extract assembly code if file exists
    d1, risc_cloze = extract(f1) if os.path.exists(f1) else ({}, "")
    d2, arm_cloze = extract(f2) if os.path.exists(f2) else ({}, "")
    d3, x86_cloze = extract(f3) if os.path.exists(f3) else ({}, "")  # NEW: Extract x86 assembly

    # Create final JSON entry
    fname = os.path.basename(f)
    d = {
        "source": fname,
        "c": remove_comments(open(f).read()),
        "risc": open(f1).read() if os.path.exists(f1) else "",
        "risc_fns": d1,
        "risc_cloze": risc_cloze,
        "arm": open(f2).read() if os.path.exists(f2) else "",
        "arm_fns": d2,
        "arm_cloze": arm_cloze,
        "x86": open(f3).read() if os.path.exists(f3) else "",  # NEW: Store x86 assembly
        "x86_fns": d3,  # NEW: Store extracted x86 functions
        "x86_cloze": x86_cloze,  # NEW: Store processed x86 cloze representation
    }

    print(json.dumps(d), file=out)
