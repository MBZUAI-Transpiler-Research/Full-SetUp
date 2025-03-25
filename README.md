# Transpiler Project Setup Guide

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
- Installs system dependencies via `apt`:
- Verifies installed packages.
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

## Step 4: Clone Euler into local

The line below clones and downloads the necessary Euler files into your local

```bash
find "$HOME/transpiler_project/project-euler-c" -type f \( -name "*.c" -o -name "*.txt" \) -exec cp {} "$EULER_DIR/" \;
```

## Step 5: Compile Assembly (`compile_assembly_vl.sh`)

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

## Step 6: Assemble Binaries (`assemble_binary_vl.sh`)

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

## Step 7: Verify File Existence

This part checks to make sure that all the necessary files have actually been created

## Step 8: Execute Binaries (`qemu_execute_vl.sh`)

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

## Step 9: Create JSON files for parsed assembly data

This script runs the compiled executables using QEMU.

### **Usage**
```bash
mkdir -p json_files # Ensure json_files directory exists
python parse.py "$EULER_DIR" "json_files/euler.json" || { echo "Error running parse.py"; exit 1; }
```

### **What It Does**
- Gathers all the C and assembly files and converts them into the form needed for Guess and Sketch.

---

## **Step 10: Cloning the Unix Commands Code**

### **Usage**
```bash
    echo "Cloning Unix Commands repository into temporary directory..."
    git clone https://github.com/yadu007/Basic-Unix-Commands-Implementation.git "$TEMP_DIR" || { echo "Error cloning repository"; exit 1; }
    
    # Remove .git to avoid submodule issues
    rm -rf "$TEMP_DIR/.git"
    
    # Ensure PROJECT_SOURCE exists
    mkdir -p "$PROJECT_SOURCE"

    # Copy contents instead of moving
    cp -r "$TEMP_DIR/"* "$PROJECT_SOURCE/"

    # Remove the temporary directory after copying
    rm -rf "$TEMP_DIR"
```

### **What It Does**
- Ensures we have a local repository of the Unix Command Codes
- Uses temp folder to avoid issues with clone another repo and uploading to git later

---

## **Step 11: Installing GMP and Fixing Headers**

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

## **Step 12: Compiling Unix Commands (`compile_assembly_vl.sh`)**

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

## **Step 13: Assembling Executable Binaries (`assemble_binary_vl.sh`)**

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

## **Step 14: Running Unix Commands via QEMU (`test_unixcmds_vl.sh`)**

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

## **Step 15: Creating JSON Output (`parse.py`)**

### **Usage**
```bash
mkdir -p json_files
python parse.py unix_commands/ json_files/unix_commands.json
```

### **What It Does**
- Extracts function structures from each compiled **RISC-V** and **ARM** assembly file.
- Matches them with their corresponding **C source files**.
- Outputs the results into a **single JSON file (`json_files/unix_commands.json`)**.
- This JSON stores parsed Unix command assembly data separately from Euler problems.

---


# **HumanEval Data Automation Guide**

## **Overview**
This section details the process for **compiling, executing, and generating structured JSONL data** for the **HumanEval dataset**.

Each **HumanEval problem consists of two separate C files**:
- **`code.c`** - Contains the function implementation.
- **`test.c`** - Contains test cases and the `main` function.

We **process these files in two ways**:
1. **Combined (`code.c` + `test.c`)** – These files are **merged, compiled, executed, and stored** for later analysis.
2. **Standalone (`code.c` only)** – These are **compiled separately**, linked with `test.c`, **executed for correctness**, and stored for independent function analysis.

---

## **Step 16: Combine `code.c` and `test.c` (`combine_c_files.py`)**

### **Usage**
```bash
python combine_c_files.py
```

### **What It Does**
- **Merges `code.c` and `test.c`** into a single file for later analysis.
- Ensures that **test cases are included** for execution.
- The resulting combined file is **compiled and executed**.

---

## **Step 17: Fix Missing Headers (Automated Check)**

### **What It Does**
- Automatically checks for **missing standard C headers** and **adds them if necessary**.
- Ensures compatibility across **RISC-V, ARM, and x86** architectures.
- Headers that are conditionally added:
  - **`stdlib.h`** (if `malloc` or `free` is used)
  - **`string.h`** (if `strcmp` is used)
  - **`math.h`** (if `ceil`, `floor`, `pow`, `sqrt`, `fabs`, `roundf`, `round` are used)
  - **`stdio.h`** (if `printf` is used)

---

## **Step 18: Compile and Execute the Combined Files (`code.c` + `test.c`)**

### **What It Does**
- **Compiles the merged files** into assembly and object files.
- **Executes the compiled programs** for correctness verification.

### **Usage**
```bash
cd eval

# Generate assembly files
riscv64-linux-gnu-gcc -S problemX.c -o assembly_output/problemX.risc.s
aarch64-linux-gnu-gcc -S problemX.c -o assembly_output/problemX.arm.s
x86_64-linux-gnu-gcc -S problemX.c -o assembly_output/problemX.x86.s

# Generate object files
riscv64-linux-gnu-gcc -c problemX.c -o assembly_output/problemX.risc.o
aarch64-linux-gnu-gcc -c problemX.c -o assembly_output/problemX.arm.o
x86_64-linux-gnu-gcc -c problemX.c -o assembly_output/problemX.x86.o

# Link and execute
riscv64-linux-gnu-gcc assembly_output/problemX.risc.o -o assembly_output/problemX.risc
aarch64-linux-gnu-gcc assembly_output/problemX.arm.o -o assembly_output/problemX.arm
x86_64-linux-gnu-gcc assembly_output/problemX.x86.o -o assembly_output/problemX.x86

qemu-riscv64 -L /usr/riscv64-linux-gnu assembly_output/problemX.risc
qemu-aarch64 -L /usr/aarch64-linux-gnu assembly_output/problemX.arm
qemu-x86_64 -L /usr/x86_64-linux-gnu assembly_output/problemX.x86
```

### **Key Clarifications**
- **The combined files are executed.**
- **Results are stored for later analysis.**

---

## **Step 19: Compile `code.c` Separately**

### **What It Does**
- **Compiles `code.c` separately**, links it with `test.c`, and **executes it**.
- If the test cases pass, `code.c` is **stored for later analysis**.

### **Usage**
```bash
for dir in eval/*/; do
    if [ -f "$dir/code.c" ] && [ -f "$dir/test.c" ]; then
        problem_name=$(basename "$dir")

        echo "Compiling and linking test.c for $problem_name..."

        # Check if math functions are used in either file
        if grep -q -E "ceil|floor|pow|sqrt|fabs|roundf|round" "$dir/code.c" || grep -q -E "ceil|floor|pow|sqrt|fabs|roundf|round" "$dir/test.c"; then
            LINK_FLAG="-lm"
        else
            LINK_FLAG=""
        fi

        # Link test.c with code.o and include -lm if needed
        riscv64-linux-gnu-gcc "$dir/test.c" "eval/assembly_output/${problem_name}.risc.o" -o "eval/qemu_test_output/${problem_name}.risc" $LINK_FLAG
        aarch64-linux-gnu-gcc "$dir/test.c" "eval/assembly_output/${problem_name}.arm.o" -o "eval/qemu_test_output/${problem_name}.arm" $LINK_FLAG
        x86_64-linux-gnu-gcc "$dir/test.c" "eval/assembly_output/${problem_name}.x86.o" -o "eval/qemu_test_output/${problem_name}.x86" $LINK_FLAG
    fi
done
```

---

## **Step 20: Execute `code.c` with `test.c` in QEMU for Correctness Verification**

### **What It Does**
- Runs the compiled **HumanEval test cases** in **QEMU** for all three architectures.
- If execution is successful, the `code.c` file is stored for analysis.

### **Usage**
```bash
for test_executable in eval/qemu_test_output/*; do
    problem_name=$(basename "$test_executable")

    echo "Executing ${problem_name} with QEMU..."

    if [[ "$problem_name" == *.risc ]]; then
        qemu-riscv64 -L /usr/riscv64-linux-gnu "$test_executable"
    elif [[ "$problem_name" == *.arm ]]; then
        qemu-aarch64 -L /usr/aarch64-linux-gnu "$test_executable"
    elif [[ "$problem_name" == *.x86 ]]; then
        qemu-x86_64 -L /usr/x86_64-linux-gnu "$test_executable"
    fi

    echo "Execution complete for $problem_name."
done
```

---

## **Step 21: Parse Both Combined and Standalone C Files into JSONL**

### **What It Does**
- Converts **compiled assembly and source code** into structured **JSONL files**.
- **Creates two JSONL files**:
  1. **Combined (`eval_combined.jsonl`)** – Represents the merged and executed `code.c` and `test.c` files.
  2. **Standalone (`eval_standalone.jsonl`)** – Represents `code.c` in isolation but verified for correctness.

### **Usage**
```bash
# Combined (code.c + test.c)
python parse.py "$HOME/transpiler_project/eval" "jsonl_files/eval_combined.jsonl"

# Standalone (code.c only, but verified)
python parse.py "$HOME/transpiler_project/eval" "jsonl_files/eval_standalone.jsonl"
```

---

### **Human Eval Section Summary**
- Runs **all steps in order**, including:
  - **Combining C files**
  - **Fixing missing headers**
  - **Compiling into assembly and object files**
  - **Verifying correctness through execution**
  - **Generating JSONL output**
  - **Cleaning up temporary files**

## **Full Automation: Running Everything with One Command**

### **Usage**
```bash
chmod +x fullsetup.sh
./fullsetup.sh
```


python hippo/main.py --sketch \
    --source_lang risc --target_lang arm \
    --predictions_folder unix_commands 
