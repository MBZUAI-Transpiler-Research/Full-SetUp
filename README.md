# Transpiler Project Setup Guide

# Master Setup and Euler

## Overview
This README provides step-by-step instructions to set up the transpiler project, including installing necessary dependencies, compiling assembly files, and executing compiled programs using QEMU.

---

## Step 1: Install Miniconda (`getconda_vl.sh`)

*Miniconda is used to manage dependencies within a Conda environment.*

### **Usage**
```bash
chmod +x ./getconda_vl.sh
./getconda_vl.sh
```

### **What It Does**
- Checks if Miniconda is already installed.
- Prompts the user to remove and reinstall if it exists.
- Updates the package list and installs `wget`.
- Downloads and installs Miniconda.
- Removes the Miniconda installer file.
- Instructs the user to restart the shell session for changes to take effect.

---

## Step 2: Install Dependencies (`getdependencies_vl.sh`)

This script installs required dependencies for cross-compilation and QEMU execution.

### **Usage**
```bash
chmod +x Shell_Scripts/getdependencies_vl.sh
Shell_Scripts/getdependencies_vl.sh <project_name>
```

### **What It Does**
- Initializes Conda and reloads the shell.
- Creates a Conda environment named `crosscompilers` with Python 3.9.
- Installs required Conda packages:
  - `gcc_linux-64`
  - `ninja`
  - `cmake`
  - `flex`
  - `bison`
  - `wget`
  - `datasets`
  - `glob2`
- Installs system dependencies via `apt`:
  - `vim`
  - `xz-utils`
  - `python3-pip`
  - `python3-virtualenv`
  - `python3-dev`
  - `qemu-user`
  - `gcc-aarch64-linux-gnu`
  - `gcc-riscv64-linux-gnu`
- Verifies installed packages.
- Clones (https://github.com/celine-lee/transpile/tree/main) into <project_name>.
---

## Step 3: Install GMP (`install_gmp.sh`)

This script installs GMP (GNU Multiple Precision Arithmetic Library) for both RISC-V and ARM.

### **Usage**
```bash
chmod +x Shell_Scripts/install_gmp.sh
Shell_Scripts/install_gmp.sh
```

### **What It Does**
- Downloads and compiles GMP for RISC-V and ARM architectures if missing.
- Installs GMP for both architectures.
- Removes temporary installation files after completion.

---

## Step 4: Compile Assembly (`compile_assembly_vl.sh`)

This script compiles all C and C++ files into **both standard and verbose assembly output** for both RISC-V and ARM architectures.

### **Usage**
```bash
chmod +x Shell_Scripts/compile_assembly_vl.sh
Shell_Scripts/compile_assembly_vl.sh <source_directory>
```

### **What It Does**
- Prepares directories for storing compiled files.
- Ensures required cross-compilers (`riscv64-linux-gnu-gcc` and `aarch64-linux-gnu-gcc`) are installed.
- Compiles **C files** with `gcc` and **C++ files** with `g++` for both RISC-V and ARM.
- Generates **two types of assembly files**:
  - **Standard assembly** (`problemX.arm.s`, `problemX.risc.s`)
  - **Verbose assembly** (`problemX.arm.verbose.s`, `problemX.risc.verbose.s`)
- Validates output files and ensures that no empty assembly files were generated.

---

## Step 5: Assemble Binaries (`assemble_binary_vl.sh`)

This script links the compiled assembly files into executable binaries for both RISC-V and ARM.

### **Usage**
```bash
chmod +x Shell_Scripts/assemble_binary_vl.sh
Shell_Scripts/assemble_binary_vl.sh <source_directory>
```

### **What It Does**
- Iterates through all compiled `.s` assembly files.
- Determines whether the source file is C or C++ and selects the appropriate compiler (`gcc` or `g++`).
- Checks if `gmp.h` or `math.h` is required and links against `-lgmp` or `-lm` accordingly.
- Generates executable binaries (`.out` files) for both architectures.

---

## Step 6: Execute Binaries (`qemu_execute_vl.sh`)

This script runs the compiled executables using QEMU.

### **Usage**
```bash
chmod +x Shell_Scripts/qemu_execute_vl.sh
Shell_Scripts/qemu_execute_vl.sh <source_directory>
```

### **What It Does**
- Ensures `names.txt` and `words.txt` are available by downloading them if necessary.
- Iterates over all `.out` files and runs them using the appropriate QEMU emulator.
- Executes ARM binaries using `qemu-aarch64` and RISC-V binaries using `qemu-riscv64`.

---

## **Full Automation: Running Everything with One Command**

Instead of manually running each step, you can use `setup_master_vl.sh` to automate the entire pipeline.

### **Usage**
```bash
chmod +x setup_master_vl.sh
./setup_master_vl.sh <project_name>
```

### **What It Does**
1. **Checks if Miniconda is installed** (if missing, installs it).
2. **Installs dependencies** using `getdependencies_vl.sh`.
3. **Activates the Conda environment**.
4. **Installs GMP** if necessary.
5. **Copies C/C++ files** from `<project_name>` to the `euler/` directory.
6. **Compiles the files into standard and verbose assembly**.
7. **Assembles the binaries**.
8. **Runs the compiled programs using QEMU**.
9. **Creates the json output, which combines assembly and C then aligns them**

After running this script, all compiled assembly and binary files will be stored in:
```
transpiler_project/euler/assembly_output/
```

---

## **Project Structure**
After running `setup_master_vl.sh`, your project should look like this:

```
transpiler_project/
│── Notes/                   # Describes what we have done one different days
│── hippo/                   # Cloned from <project_name>
│── json_files/              # Only one file currently
│   ├── euler.json
│── euler/                   # Stores copied C files from hippo
│   ├── problem1.c
│   ├── problem2.c
│   ├── problemX.c ...
│   ├── assembly_output/
│   │   ├── problem1.arm.s
│   │   ├── problem1.arm.verbose.s
│   │   ├── problem1.risc.s
│   │   ├── problem1.risc.verbose.s
│   │   ├── problem1.arm.out
│   │   ├── problem1.risc.out
│   │   ├── problem1.risc.out ...
│── setup_master_vl.sh        # Runs everything automatically
│── addingunix_master_vl.sh   # Not used in this step, but critical for next step
│── parse.py                  # Used for json creation
│── Shell_Scripts/            # Stores all helper scripts
│   ├── getconda_vl.sh
│   ├── getdependencies_vl.sh
│   ├── install_gmp.sh
│   ├── compile_assembly_vl.sh
│   ├── assemble_binary_vl.sh
│   ├── qemu_execute_vl.sh
│── README.md
```

---

## **Final Notes**
- The verbose assembly generation is now part of **`compile_assembly_vl.sh`**.
- The **Euler files are separated** from `hippo/` so `hippo/` can be deleted later.
- **QEMU execution is modular**, allowing future compilation of different C projects.
- **JSON files are created**, preparing us for further steps.
---

# **Unix Commands Automation Guide**

## Overview
This section of the project focuses on setting up, compiling, and running basic Unix commands in both **RISC-V** and **ARM** architectures. This process follows similar steps to the Euler setup but is adapted for command-line utilities instead of mathematical problems.

---

## **Step 1: Setting Up the Environment and Cloning Unix Commands**

### **Usage**
```bash
source $HOME/miniconda3/etc/profile.d/conda.sh || { echo "❌ Conda initialization failed"; exit 1; }
conda activate crosscompilers || { echo "❌ Error activating Conda environment"; exit 1; }
```

### **What It Does**
- Ensures the **Conda environment** (`crosscompilers`) is active.
- Clones the Unix Commands repository  (https://github.com/yadu007/Basic-Unix-Commands-Implementation/tree/master) into a **temporary directory**.
- Removes the embedded `.git` directory to avoid conflicts.
- Moves the extracted files into the appropriate **project directory (`unix_commands/`)**.
- Cleans up by removing the temporary directory.

---

## **Step 2: Installing GMP and Fixing Headers**

### **Usage**
```bash
chmod +x Shell_Scripts/install_gmp.sh
Shell_Scripts/install_gmp.sh
chmod +x Shell_Scripts/fix_missing_headers.sh
Shell_Scripts/fix_missing_headers.sh unix_commands/
```

### **What It Does**
- Ensures **GMP (GNU Multiple Precision Arithmetic Library)** is installed for RISC-V and ARM.
- Fixes missing headers to prevent compilation errors.

---

## **Step 3: Compiling Unix Commands (`compile_assembly_vl.sh`)**

### **Usage**
```bash
chmod +x Shell_Scripts/compile_assembly_vl.sh
Shell_Scripts/compile_assembly_vl.sh unix_commands/
```

### **What It Does**
- Compiles each C program into both **RISC-V** and **ARM** assembly.
- Generates assembly files in `assembly_output/`.
- Handles both **standard** and **verbose** assembly output.

---

## **Step 4: Assembling Executable Binaries (`assemble_binary_vl.sh`)**

### **Usage**
```bash
chmod +x Shell_Scripts/assemble_binary_vl.sh
Shell_Scripts/assemble_binary_vl.sh unix_commands/
```

### **What It Does**
- Converts compiled assembly files into **executable binaries** for both architectures.
- Uses `gcc` or `g++` depending on whether the original file was a **C** or **C++** program.
- Links the correct **libraries** (e.g., `gmp` or `math.h`) when required.

---

## **Step 5: Running Unix Commands via QEMU (`test_unixcmds_vl.sh`)**

### **Usage**
```bash
chmod +x Shell_Scripts/test_unixcmds_vl.sh
Shell_Scripts/test_unixcmds_vl.sh unix_commands/
```

### **What It Does**
- Executes each compiled Unix command **within QEMU**.
- Runs **both ARM and RISC-V binaries** to ensure correctness.
- Displays output and verifies functionality.

---

## **Step 6: Creating JSON Output (`parse.py`)**

### **Usage**
```bash
mkdir -p json_files
python parse.py unix_commands/ json_files/unix_commands.json
```

### **What It Does**
- Extracts function structures from each compiled **RISC-V** and **ARM** assembly file.
- Matches them with their corresponding **C source files**.
- Outputs the results into a **single JSON file (`json_files/unix_commands.json`)**.

---

## **Full Automation: Running Everything with One Command**

Instead of executing each step manually, the script **`addingunix_master_vl.sh`** automates the entire pipeline.

### **Usage**
```bash
chmod +x addingunix_master_vl.sh
./addingunix_master_vl.sh
```

### **What It Does**
1. **Ensures the Conda environment is active.**
2. **Clones and configures the Unix Commands repository.**
3. **Installs GMP and fixes headers.**
4. **Compiles C files into assembly.**
5. **Links assembly into executable binaries.**
6. **Runs the executables using QEMU.**
7. **Generates structured JSON output.**

After running this script, all compiled Unix commands, executables, and JSON outputs will be stored in:
```
transpiler_project/unix_commands/assembly_output/
transpiler_project/json_files/unix_commands.json
```

---

## **Project Structure After Running Both Scripts**

After executing **both `setup_master_vl.sh` and `addingunix_master_vl.sh`**, your project should look like this:

```
transpiler_project/
│── Notes/                   # Describes previous work
│── hippo/                   # Cloned from <project_name>
│── json_files/              # JSON output directory
│   ├── euler.json           # Euler problems JSON
│   ├── unix_commands.json   # Unix commands JSON
│── euler/                   # Euler project
│   ├── problem1.c
│   ├── problem2.c...
│   ├── assembly_output/
│   │   ├── problem1.arm.s
│   │   ├── problem1.risc.s
│   │   ├── problem1.arm.out
│   │   ├── problem1.risc.out...
│── unix_commands/           # Unix commands project
│   ├── cat.c
│   ├── cd.c
│   ├── ls.c...
│   ├── assembly_output/
│   │   ├── cat.arm.s
│   │   ├── cat.risc.s
│   │   ├── cat.arm.out
│   │   ├── cat.risc.out...
│── Shell_Scripts/           # Stores all helper scripts
│   ├── compile_assembly_vl.sh
│   ├── assemble_binary_vl.sh
│   ├── qemu_execute_vl.sh
│   ├── test_unixcmds_vl.sh
│   ├── fix_missing_headers.sh
│   ├── get_conda_vl.sh
│   ├── getdependencies_vl.sh
│   ├── install_gmp.sh
│── setup_master_vl.sh       # Automates Euler setup
│── addingunix_master_vl.sh  # Automates Unix commands setup
│── parse.py                 # Used for JSON creation
│── README.md                # Documentation
```

---

## **Final Notes**
- **Unix commands and Euler problems now follow the same pipeline.**
- **All commands are compiled and executed for both RISC-V and ARM.**
- **QEMU execution ensures cross-architecture compatibility.**
- **JSON files enable structured analysis of assembly and source code.**


# **HumanEval Data Automation Guide**

## Overview
This section details the process for compiling, executing, and generating structured JSON data for the **HumanEval dataset**. Unlike Euler and Unix, each **HumanEval problem consists of two separate C files**:  
- **`code.c`** - Contains the function implementation.
- **`test.c`** - Contains test cases and the `main` function.

Since `test.c` is required for execution, **we must concatenate both files before compilation**.

---

## **Step 1: Combining `code.c` and `test.c` (`combine_c_files.py`)**

Before compiling, we merge `code.c` and `test.c` into a **single file** for each problem.

### **Usage**
```bash
python combine_c_files.py
```

### **What It Does**
- Iterates through all `problem*` directories in `eval/`.
- Merges `code.c` and `test.c`, adding a **newline separator**.
- Saves the combined file as `<problem_dir>.code.c` in `eval/`.
- Preserves the original `code.c` and `test.c` files.

Example output:
```
eval/
├── problem1/
│   ├── code.c
│   ├── test.c
│── problem1.code.c   # Combined file
...
```

---

## **Step 2: Compiling and Executing HumanEval Programs (`eval_vl.sh`)**

This script compiles the merged C files into **RISC-V** and **ARM** assembly, executes them using QEMU, and stores the outputs.

### **Usage**
```bash
chmod +x eval_vl.sh
./eval_vl.sh
```

### **What It Does**
1. **Ensures combined files exist** (`combine_c_files.py` runs automatically).
2. **Adds missing headers** (e.g., `string.h`, `stdlib.h`).
3. **Compiles each problem’s C file** into:
   - **Standard assembly** (`.risc.s`, `.arm.s`)
   - **Verbose assembly** (`.risc.verbose.s`, `.arm.verbose.s`)
   - **Object files** (`.risc.o`, `.arm.o`)
   - **Executable binaries** (`.risc`, `.arm`)
4. **Executes compiled binaries** using QEMU:
   ```bash
   qemu-riscv64 -L /usr/riscv64-linux-gnu problemX.risc
   qemu-aarch64 -L /usr/aarch64-linux-gnu problemX.arm
   ```
5. **Moves outputs** to `assembly_output/`.

After execution, the project structure looks like this:
```
eval/
├── problem1.code.c
├── problem2.code.c
├── assembly_output/
│   ├── problem1.code.risc.s
│   ├── problem1.code.arm.s
│   ├── problem1.code.risc
│   ├── problem1.code.arm
...
```

---

## **Step 3: Generating JSON Output (`parse.py`)**

Once all programs are compiled and executed, we extract the **C source code**, **assembly output**, and **function mappings** into a structured JSON file.

### **Usage**
```bash
python parse.py eval/ json_files/eval.json
```

### **What It Does**
- **Extracts assembly functions** from `.risc.s` and `.arm.s` files.
- **Matches assembly functions** to the original C function (`func0`, etc.).
- **Creates JSON output** with fields:
  ```json
  {
      "source": "problem1.code.c",
      "c": "<C source code>",
      "risc": "<RISC-V assembly>",
      "risc_fns": { "func0": "<RISC-V function assembly>" },
      "arm": "<ARM assembly>",
      "arm_fns": { "func0": "<ARM function assembly>" }
  }
  ```
- **Saves results in `json_files/eval.json`**.

After execution:
```
json_files/
├── eval.json   # JSON file containing all extracted data
```

---

## **Full Automation: Running Everything with One Command**

Instead of executing each step manually, **`eval_vl.sh`** automates the **entire pipeline**.

### **Usage**
```bash
chmod +x eval_vl.sh
./eval_vl.sh
```

### **What It Does**
1. **Combines `code.c` and `test.c`**.
2. **Compiles C programs into assembly and binaries**.
3. **Executes compiled programs using QEMU**.
4. **Extracts assembly functions and generates JSON output**.

---

## **Portion of Project Structure After Running Everything**

After executing `eval_vl.sh`, the **HumanEval** dataset will be fully compiled and processed. Below shows an abbreviated structure of the repository:

```
transpiler_project/
│── eval/                   # Contains combined C files
│   ├── problem1.code.c
│   ├── problem2.code.c
│   ├── assembly_output/
│   │   ├── problem1.code.risc.s
│   │   ├── problem1.code.arm.s
│   │   ├── problem1.code.risc
│   │   ├── problem1.code.arm
│   │   ├── problem1.code.risc.verbose.s
│   │   ├── problem1.code.arm.verbose.s
│   │   ├── problem1.code.risc.o
│   │   ├── problem1.code.arm.o
│── json_files/             # JSON output
│   ├── eval.json
│── Shell_Scripts/          # Automation scripts
│── eval_vl.sh              # Automates everything
│── combine_c_files.py      # Combines test and code files
│── parse.py                # Extracts assembly and creates JSON
│── README.md
```

---

## **Final Notes**
- **HumanEval requires merging two C files per problem** before compilation.
- **Memory warnings arise when running some of the code with empty inputs but are not incorrect**.
- **Problem 1 has an error in the return statement, where 0 and 10 are mixed up**.
