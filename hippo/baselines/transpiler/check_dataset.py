import re
import glob
from solver.docker_evaluate import run_qemu
import random
import json

def test_example(datapoint, make_run_commands):
    progname = datapoint["src"].split(".c")[0]
    executed_datapoint = {
        "risc": datapoint["risc"],
        "arm": datapoint["arm"],
        "risc_translation": datapoint['pred_risc']
    }

    # Get truth execution.
    input_assembly = datapoint["arm"]
    (succeeded, _, true_execution_output) = run_qemu(
        input_assembly,
        progname,
        f"risc_translations/true",
        make_run_commands,
        'arm',
    )
    print("expected exc output:", true_execution_output)
    executed_datapoint["exc_true"] = true_execution_output
    
    (succeeded, stage, pred_execution_output) = run_qemu(   
        datapoint['pred_risc'],
        progname,
        f"risc_translations/pred",
        make_run_commands,
        'risc'
    )
    executed_datapoint["exc_output"] = pred_execution_output

    with open(
        f"risc_translations/solved_{progname}.json", "w"
    ) as f:
        json.dump(executed_datapoint, f, indent=4)

def main():
    make_run_commands = {}
    make_run_commands['project-euler-c'] = {
        "gcc_flags": "$(pkg-config --libs gmp) -lm",
        "qemu_setup": {
                "problem": {"setup": [], "qemu_args": "", "test": [], "cleanup": []}
            },
        "as_cmd": "{prefix}-linux-gnu-as",
        "gcc_cmd": "{prefix}-linux-gnu-gcc -pthread",
        "qemu_cmd": "qemu-{prefix} -L /usr/{prefix}-linux-gnu"
    }
    make_run_commands['benchmarks-game'] = {
        "as_cmd": "{prefix}-linux-gnu-as",
        "gcc_cmd": "{prefix}-linux-gnu-gcc -pthread",
        "qemu_cmd": "qemu-{prefix} -L /usr/{prefix}-linux-gnu",
        "gcc_flags": "$(pkg-config --libs apr-1 gmp) -lm",
        "qemu_setup": {
            "binary-trees": {
                "setup": [],
                "test": [],
                "cleanup": [],
                "qemu_args": "9",  # "21",
            },
            "fannkuch-redux": {
                "setup": [],
                "test": [],
                "cleanup": [],
                "qemu_args": "9",  # "12",
            },
            "pidigits": {
                "setup": [],
                "test": [],
                "cleanup": [],
                "qemu_args": "1000",  # 0,
            },
            "nbody": {
                "setup": [],
                "test": [],
                "cleanup": [],
                "qemu_args": "500000",  # 00,
            },
            "fasta": {
                "setup": [],
                "test": [],
                "cleanup": [],
                "qemu_args": "250",  # 00000,
            },
            "toosimple": {
                "setup": [],
                "test": [],
                "cleanup": [],
                "qemu_args": "100000000",  # 00,
            },
        }
    }
    random_num = random.randint(0, 1000)
    make_run_commands['Basic-Unix-Commands-Implementation'] = {
        "as_cmd": "{prefix}-linux-gnu-as",
        "gcc_cmd": "{prefix}-linux-gnu-gcc -pthread",
        "qemu_cmd": "qemu-{prefix} -L /usr/{prefix}-linux-gnu",
        "gcc_flags": "",
        "qemu_setup": {
                "cat": {
                    "setup": [
                        "echo hello " + str(random_num) + " > {folder}/testfile.txt"
                    ],
                    "qemu_args": "{folder}/testfile.txt",
                    "test": [""],
                    "cleanup": ["rm {folder}/testfile.txt"],
                },
                "cd": {
                    "setup": [],
                    "qemu_args": "../../",
                    "test": [],
                    "cleanup": [],
                },
                "cp": {
                    "setup": [
                        "mkdir {folder}/tempfolder",
                        "touch {folder}/tempfolder/testfile.txt",
                        "echo hello "
                        + str(random_num)
                        + " > {folder}/tempfolder/testfile.txt",
                    ],
                    "qemu_args": "{folder}/tempfolder/testfile.txt {folder}/tempfolder/copiedtestfile.txt",
                    "test": [
                        "cat {folder}/tempfolder/copiedtestfile.txt",
                        "ls {folder}/tempfolder",
                    ],
                    "cleanup": ["rm -rf {folder}/tempfolder"],
                },
                "ls": {
                    "setup": [
                        "mkdir {folder}/tempfolder",
                        "touch {folder}/tempfolder/testfile.txt",
                        "echo hello "
                        + str(random_num)
                        + " > {folder}/tempfolder/testfile.txt",
                    ],
                    "qemu_args": "{folder}/tempfolder",
                    "test": [],
                    "cleanup": ["rm -rf {folder}/tempfolder"],
                },
                "mkdir": {
                    "setup": ["mkdir -p {folder}/tempfolder/"],
                    "qemu_args": "{folder}/tempfolder/atestfolder",
                    "test": ["ls {folder}/tempfolder"],
                    "cleanup": ["rm -rf {folder}/tempfolder"],
                },
                "ps": {
                    "setup": [],
                    "qemu_args": "",
                    "test": [],
                    "cleanup": [],
                },
                "rm": {
                    "setup": [
                        "mkdir {folder}/tempfolder",
                        "touch {folder}/tempfolder/filetorm.txt",
                    ],
                    "qemu_args": "{folder}/tempfolder/filetorm.txt",
                    "test": ["ls {folder}/tempfolder"],
                    "cleanup": ["rm -rf {folder}/tempfolder"],
                },
                "rmdir": {
                    "setup": [
                        "mkdir -p {folder}/tempfolder/newfolder",
                        "touch {folder}/tempfolder/afile.txt",
                    ],
                    "qemu_args": "{folder}/tempfolder/newfolder",
                    "test": ["ls {folder}/tempfolder"],
                    "cleanup": ["rm -rf {folder}/tempfolder"],
                },
                "tee": {
                    "setup": [],
                    "qemu_args": "",
                    "test": [],
                    "cleanup": [],
                },
                "touch": {
                    "setup": [
                        "touch {folder}/testfile.txt",
                        "echo hello " + str(random_num) + " > {folder}/testfile.txt",
                    ],
                    "qemu_args": "{folder}/testfile.txt",
                    "test": [],
                    "cleanup": ["rm {folder}/testfile.txt"],
                },
                "xargs": {
                    "setup": [],
                    "qemu_args": "",
                    "test": [],
                    "cleanup": [],
                },
            }
    }

    for filename in glob.glob('risc_translations/*.risc.s'):
        print(filename)
        if 'program' in filename or 'problem' in filename: continue
        match = re.search(r'risc_translations/(.*).risc.s', filename)
        if not match: continue
        progname = match.group(1)
        if progname.startswith('problem'): dataset = 'project-euler-c'
        elif progname[:4] in {'bina', 'fann', 'fast', 'nbod', 'pidi', 'toos'}: dataset = 'benchmarks-game'
        else: dataset = 'Basic-Unix-Commands-Implementation'
        datapoint = {
            "src": f"{progname}.c",
            "risc": open(f'../../data/{dataset}/{progname}.risc.s').read(),
            "arm": open(f'../../data/{dataset}/{progname}.arm.s').read(),
            "pred_risc": open(filename).read(),
        }
        test_example(datapoint, make_run_commands[dataset])

if __name__ == '__main__': 
    main()