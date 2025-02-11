from datasets import load_dataset, Dataset
import random
import os
import subprocess
import glob
import re
import json
import sys

ds = load_dataset("bigcode/the-stack", data_dir="data/c", streaming = True, split="train")
save_to = sys.argv[1]
subprocess.run(['mkdir', '-p', save_to])

def isfloat(num):
    try:
        float(num)
        return True
    except ValueError: return False

def data_augger(code):
    yield code
    # modify '#define __ <number>' and 'const int __ = <number>'
    define_regex = r'#define (\S+) ([+-]?[\d*\.]?\d+)'
    const_regex = r'const int (\S+) ([+-]?\d+)'
    index = 0
    code_matches = re.findall(re.compile(define_regex), code)
    redefined_code = ""
    for varname, value in code_matches:
        new_val = value
        if value.isdigit(): 
            new_val = int(new_val)
            if new_val < 0:
                new_val += random.randint(new_val, -1*new_val)
            elif new_val > 0:
                new_val += random.randint(-1*new_val, new_val)
            else: 
                new_val += random.randint(-30, 30)
        elif isfloat(value): 
            new_val = float(new_val)
            new_val *= random.random()
        define_idx = re.search(define_regex, code[index:])
        redefined_code += code[index:define_idx.start() + index] + f'#define {varname} {new_val}'
        index = define_idx.end() + index
    redefined_code += code[index:]
    new_code = ""
    index = 0
    code_matches = re.findall(re.compile(const_regex), redefined_code)
    for varname, value in code_matches:
        new_val = int(value)
        if new_val > 0: new_val += random.randint(-1*new_val, new_val)
        elif new_val < 0: new_val += random.randint(new_val, -1*new_val)
        else: new_val += random.randint(-30, 30)
        const_idx = re.search(const_regex, redefined_code[index:])
        new_code += redefined_code[index:const_idx.start() + index] + f'const int {varname} {new_val}'
        index = const_idx.end() + index
    new_code += redefined_code[index:]
    if new_code != code: yield new_code



def gen_assembly():
    wait = True
    num_samples = 0
    for sample in iter(ds):
        filename = os.path.basename(sample['max_forks_repo_path'])
        if wait or filename == 'tempCodeRunnerFile.c':
            wait = False
        if wait: continue
        if sample["ext"] == "c" and sample["lang"] == "C":
            try:
                write_to = os.path.join(save_to, filename)
                for source_c in data_augger(sample['content']):
                    open(write_to, "w").write(source_c)
                
                    prefix = filename.split('.c')[0]
                    failed = False
                    for opt_level in {'0', '1', '2', '3'}:
                        subprocess.run(f'aarch64-linux-gnu-gcc -S {save_to}/{filename} -o {save_to}/{prefix}.arm_o{opt_level}.s -O{opt_level}', shell=True, stderr=subprocess.DEVNULL, stdout=subprocess.DEVNULL)
                        if not os.path.exists(f'{save_to}/{prefix}.arm_o{opt_level}.s'):
                            failed = True
                            break
                        subprocess.run(f'riscv64-linux-gnu-gcc -S {save_to}/{filename} -o {save_to}/{prefix}.risc_o{opt_level}.s -O{opt_level}', shell=True, stderr=subprocess.DEVNULL, stdout=subprocess.DEVNULL)
                        if not os.path.exists(f'{save_to}/{prefix}.risc_o{opt_level}.s'):
                            failed = True
                            break
                    if failed: 
                        for rf in glob.glob(f'{save_to}/{prefix}*'): os.remove(rf)
                        continue
                    new_datapoint = {
                        "source": filename,
                        "c": source_c,
                        "risc_o0": open(f'{save_to}/{prefix}.risc_o0.s').read(),
                        "risc_o1": open(f'{save_to}/{prefix}.risc_o1.s').read(),
                        "risc_o2": open(f'{save_to}/{prefix}.risc_o2.s').read(),
                        "risc_o3": open(f'{save_to}/{prefix}.risc_o3.s').read(),
                        "arm_o0": open(f'{save_to}/{prefix}.arm_o0.s').read(),
                        "arm_o1": open(f'{save_to}/{prefix}.arm_o1.s').read(),
                        "arm_o2": open(f'{save_to}/{prefix}.arm_o2.s').read(),
                        "arm_o3": open(f'{save_to}/{prefix}.arm_o3.s').read()
                    }
                    yield new_datapoint
                    with open(f'data{int(num_samples/5000)}.jsonl', 'a') as wf:
                        wf.write(f'{json.dumps(new_datapoint)}\n')
                    for rf in glob.glob(f'{save_to}/{prefix}*'): os.remove(rf)
                    num_samples += 1
                    if num_samples > 300000 and num_samples % 1000 == 0: 
                        import pdb; pdb.set_trace()
                        do_break = False
                        if do_break: return
            except:
                continue
                
ass_ds = Dataset.from_generator(gen_assembly)
#ass_ds.push_to_hub('celinelee/paired_arm_risc_augmented')
