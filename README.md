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

## Overview
This section details the process for compiling, executing, and generating structured JSON data for the **HumanEval dataset**. Unlike Euler and Unix, each **HumanEval problem consists of two separate C files**:  
- **`code.c`** - Contains the function implementation.
- **`test.c`** - Contains test cases and the `main` function.

Since `test.c` is required for execution, **we must concatenate both files before compilation** to ensure that test cases are correctly included during assembly generation.

---

## **Step 16: Prepare HumanEval C Files (`combine_c_files.py`)**

### **Usage**
```bash
python combine_c_files.py
```

### **What It Does**
- Combines each `code.c` and `test.c` pair into a **single C file** for compilation.
- Ensures that **test cases are included** before executing the compiled programs.
- Verifies that all required HumanEval files exist before proceeding.

---

## **Step 17: Fix Missing Headers (Automated Check)**

### **What It Does**
- Automatically checks for **missing standard C headers** and **adds them if necessary**.
- Ensures compatibility across **different architectures** (ARM, RISC-V, x86).
- Headers that are conditionally added:
  - **`stdlib.h`** (if `malloc` or `free` is used)
  - **`string.h`** (if `strcmp` is used)
  - **`math.h`** (if `ceil`, `floor`, `pow`, `sqrt`, `fabs` are used)
  - **`stdio.h`** (if `printf` is used)

---

## **Step 18: Compile Assembly (`riscv64-linux-gnu-gcc`, `aarch64-linux-gnu-gcc`, `x86_64-linux-gnu-gcc`)**

### **Usage**
```bash
cd eval

# Generate standard and verbose assembly for each problem
riscv64-linux-gnu-gcc -S problemX.c -o assembly_output/problemX.risc.s
riscv64-linux-gnu-gcc -S -fverbose-asm problemX.c -o assembly_output/problemX.risc.verbose.s

aarch64-linux-gnu-gcc -S problemX.c -o assembly_output/problemX.arm.s
aarch64-linux-gnu-gcc -S -fverbose-asm problemX.c -o assembly_output/problemX.arm.verbose.s

x86_64-linux-gnu-gcc -S problemX.c -o assembly_output/problemX.x86.s
x86_64-linux-gnu-gcc -S -fverbose-asm problemX.c -o assembly_output/problemX.x86.verbose.s
```

### **What It Does**
- Generates **assembly files** for each HumanEval problem in **RISC-V, ARM, and x86 architectures**.
- Produces **two types of assembly**:
  - **Standard assembly** (`problemX.arm.s`, `problemX.risc.s`, `problemX.x86.s`)
  - **Verbose assembly** (`problemX.arm.verbose.s`, `problemX.risc.verbose.s`, `problemX.x86.verbose.s`)
- Ensures that each generated assembly file is **not empty** before proceeding.

---

## **Step 19: Assemble Object Files (`gcc -c`)**

### **Usage**
```bash
# Convert assembly files into object files
riscv64-linux-gnu-gcc -c assembly_output/problemX.risc.s -o assembly_output/problemX.risc.o
aarch64-linux-gnu-gcc -c assembly_output/problemX.arm.s -o assembly_output/problemX.arm.o
x86_64-linux-gnu-gcc -c assembly_output/problemX.x86.s -o assembly_output/problemX.x86.o
```

### **What It Does**
- Converts each assembly file into an **object file** (`.o`).
- Ensures that compilation **does not fail** before linking.

---

## **Step 20: Link Executables (`gcc -o`)**

### **Usage**
```bash
# Check if math functions are used, and link with -lm if needed
LINK_FLAG=""

if grep -q -E "ceil|floor|pow|sqrt|fabs|roundf" problemX.c; then
    LINK_FLAG="-lm"
fi

# Link the object files into executables
riscv64-linux-gnu-gcc assembly_output/problemX.risc.o -o assembly_output/problemX.risc $LINK_FLAG
aarch64-linux-gnu-gcc assembly_output/problemX.arm.o -o assembly_output/problemX.arm $LINK_FLAG
x86_64-linux-gnu-gcc assembly_output/problemX.x86.o -o assembly_output/problemX.x86 $LINK_FLAG
```

### **What It Does**
- Links the **object files** (`.o`) into **final executable binaries** for **RISC-V, ARM, and x86**.
- If **math functions** are detected, it **links against `-lm`** to prevent missing symbols.

---

## **Step 21: Execute HumanEval Binaries (`qemu`)**

### **Usage**
```bash
# Execute compiled HumanEval problems
qemu-riscv64 -L /usr/riscv64-linux-gnu assembly_output/problemX.risc
qemu-aarch64 -L /usr/aarch64-linux-gnu assembly_output/problemX.arm
qemu-x86_64 -L /usr/x86_64-linux-gnu assembly_output/problemX.x86
```

### **What It Does**
- Runs the compiled **HumanEval test cases** in **QEMU** for all three architectures:
  - **RISC-V** (`qemu-riscv64`)
  - **ARM** (`qemu-aarch64`)
  - **x86** (`qemu-x86_64`)
- Ensures that each problem is **executable** before proceeding.

---

## **Step 22: Generate JSON Output (`parse.py`)**

### **Usage**
```bash
python parse.py "$HOME/transpiler_project/eval" "json_files/eval.json"
```

### **What It Does**
- Extracts **function structures** and **test outputs** from compiled **RISC-V, ARM, and x86 assembly**.
- Matches the parsed data with the **original C source code**.
- Stores everything in **JSON format** (`json_files/eval.json`).

---

## **Step 23: Cleanup Unused Files**

### **Usage**
```bash
# Remove old directories and temporary files
rm -rf euler unix_commands eval/assembly_output
rm -f eval/*.c
```

### **What It Does**
- **Removes temporary files and directories** to keep the workspace clean.
- Ensures that only the **final JSON output remains**.


# **Full Automation: Running Everything with One Command**

Instead of manually running each step, you can use `fullsetup.sh` to automate the entire pipeline.

### **Usage**
```bash
chmod +x fullsetup.sh
./fullsetup.sh 
```
