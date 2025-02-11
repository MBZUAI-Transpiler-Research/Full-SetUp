# Transpiler Project Setup Guide

## Overview
This README provides step-by-step instructions to set up the transpiler project, including installing necessary dependencies, compiling assembly files, and executing compiled programs using QEMU.

---

## Step 1: Install Miniconda (`getconda_01.sh`)

Miniconda is used to manage dependencies within a Conda environment.

### Usage:
```bash
chmod +x ./getconda_01.sh
./getconda_01.sh
```

### What It Does:
- Checks if Miniconda is already installed.
- Prompts the user to remove and reinstall if it exists.
- Updates the package list and installs `wget`.
- Downloads and installs Miniconda.
- Removes the Miniconda installer file.
- Instructs the user to restart the shell session for changes to take effect.

---

## Step 2: Install Dependencies (`getdependencies02.sh`)

This script installs required dependencies for cross-compilation and QEMU execution.

### Usage:
```bash
chmod +x ./getdependencies02.sh
./getdependencies02.sh <project_name>
```

### What It Does:
- Initializes Conda and reloads the shell.
- Creates a Conda environment named `crosscompilers` with Python 3.9.
- Installs required packages inside Conda (`gcc_linux-64`, `ninja`, `cmake`, `flex`, `bison`, `wget`, `datasets`, `glob2`).
- Installs system dependencies via `apt` (`vim`, `xz-utils`, `python3-pip`, `python3-virtualenv`, `python3-dev`, `qemu-user`, `gcc-aarch64-linux-gnu`, `gcc-riscv64-linux-gnu`, etc.).
- Clones the project repository and installs Python dependencies.
- Verifies installed packages.

---

## Step 3: Compile Assembly (`compile_assembly.sh`)

This script sets up GMP for RISC-V and ARM, organizes C and C++ files, and compiles them into assembly output.

### Usage:
```bash
chmod +x ./compile_assembly.sh
./compile_assembly.sh
```

### What It Does:
- Downloads and compiles GMP for both RISC-V and ARM architectures if missing.
- Removes temporary files and directories after installation.
- Prepares directories for storing C and C++ files.
- Copies Project Euler C and C++ files into the test directory.
- Ensures `assembly_output` exists and prompts for overwrite if necessary.
- Compiles C files with `gcc` and C++ files with `g++` for both RISC-V and ARM.
- Validates that no empty output files exist.

---

## Step 4: Assemble Binaries (`assemble_binary.sh`)

This script links the compiled assembly files into executable binaries for both RISC-V and ARM.

### Usage:
```bash
chmod +x ./assemble_binary.sh
./assemble_binary.sh
```

### What It Does:
- Iterates through all compiled `.s` assembly files.
- Determines whether the source file is C or C++ and selects the appropriate compiler (`gcc` or `g++`).
- Checks if `gmp.h` or `math.h` is required and links against `-lgmp` or `-lm` accordingly.
- Generates executable binaries (`.out` files) for both architectures.

---

## Step 5: Execute Binaries (`qemu_execute.sh`)

This script runs the compiled executables using QEMU.

### Usage:
```bash
chmod +x ./qemu_execute.sh
./qemu_execute.sh
```

### What It Does:
- Ensures `names.txt` and `words.txt` are available by downloading them if necessary.
- Iterates over all `.out` files and runs them using the appropriate QEMU emulator.
- Executes ARM binaries using `qemu-aarch64` and RISC-V binaries using `qemu-riscv64`.

---

This document will be updated as additional steps are introduced.


##Step 6: Generate Verbose Assembly Output (compile_verbose_assembly.sh)

This script compiles all C and C++ files into verbose assembly for both RISC-V and ARM architectures.

##Usage:

chmod +x ./compile_verbose_assembly.sh
./compile_verbose_assembly.sh

## What It Does:

- Navigates to the test_c_files directory.

- Iterates through all .c and .cc files.

- Compiles each file with -fverbose-asm to generate detailed assembly output.

- Stores the generated assembly files in the assembly_output directory.

- Verifies successful compilation.

## Output Files:

- problemX.arm.verbose.s (ARM verbose assembly)

- problemX.risc.verbose.s (RISC-V verbose assembly)
