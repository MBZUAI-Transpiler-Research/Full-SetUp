import re
import os
import sys
import glob
import json

# Define paths dynamically based on the new structure
BASE_DIR = os.path.expanduser("~/transpiler_project/euler")
INPUT_FOLDER = os.path.join(BASE_DIR, "test_c_files")  # Where .c files are located
ASSEMBLY_FOLDER = os.path.join(BASE_DIR, "assembly_output")  # Where .s files are stored
OUTFILE = os.path.join(BASE_DIR, "proj_euler_functions.jsonl")  # Output JSON file

extension = "c"  # Default to C files

def extract(inp):
    """ Extract function sections and structure from assembly files. """
    sections = {}
    cloze = ""
    in_chunk = False
    with open(inp, "r") as program:
        for l in program:
            l2 = l.strip()
            if l2 and l2[0] not in {'.'} and '.' not in l2 and l2[-1] == ":":
                in_chunk = True
                section = l2[:-1]
                cloze += f"{{{section}}}"
                sections[section] = ""
            if in_chunk:
                sections[section] += l
                if l2 in {".cfi_endproc", "jr\t ra"}:
                    in_chunk = False
            else:
                cloze += l
    return sections, cloze

def remove_comments(code):
    """ Remove single-line comments from C code. """
    comment_regex = re.compile(r'//.*\n')
    return re.sub(comment_regex, '', code)

# Open the output file for writing
with open(OUTFILE, "w") as out:
    for c_file in glob.glob(os.path.join(INPUT_FOLDER, f"*.{extension}")):
        filename = os.path.basename(c_file).replace(f".{extension}", "")

        risc_file = os.path.join(ASSEMBLY_FOLDER, f"{filename}.risc.s")
        arm_file = os.path.join(ASSEMBLY_FOLDER, f"{filename}.arm.s")

        if not os.path.exists(risc_file) or not os.path.exists(arm_file):
            print(f"Skipping {c_file} - Missing assembly files")
            continue

        d1, risc_cloze = extract(risc_file)
        d2, arm_cloze = extract(arm_file)

        if len(d1) != len(d2):
            print(f"Skipping {c_file} - Function count mismatch")
            continue

        json_entry = {
            "source": os.path.basename(c_file),
            "c": remove_comments(open(c_file).read()),
            "risc": open(risc_file).read(),
            "risc_fns": d1,
            "risc_cloze": risc_cloze,
            "arm": open(arm_file).read(),
            "arm_fns": d2,
            "arm_cloze": arm_cloze
        }

        json.dump(json_entry, out)
        out.write("\n")

print(f"✅ JSONL file created: {OUTFILE}")

