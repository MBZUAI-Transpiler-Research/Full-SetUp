#!/bin/bash

set -e  # Exit immediately if a command exits with a non-zero status.

# Ensure an argument is provided
if [ -z "$1" ]; then
    echo "Error: No source folder provided."
    echo "Usage: $0 <source_folder>"
    exit 1
fi

SOURCE_FOLDER="$1"
ASSEMBLY_OUTPUT="$SOURCE_FOLDER/assembly_output"

echo "Starting Compilation Process for '$SOURCE_FOLDER'..."

# Ensure the source folder exists
if [ ! -d "$SOURCE_FOLDER" ]; then
    echo "Error: Source folder '$SOURCE_FOLDER' does not exist."
    exit 1
fi

# Ensure output directory exists
mkdir -p "$ASSEMBLY_OUTPUT"

# Step 1: Check for Cross Compilers Before Compilation
if ! command -v riscv64-linux-gnu-gcc &> /dev/null || \
   ! command -v aarch64-linux-gnu-gcc &> /dev/null || \
   ! command -v x86_64-linux-gnu-gcc &> /dev/null; then
    echo "Error: Required cross-compilers are not installed. Install 'gcc-aarch64-linux-gnu', 'gcc-riscv64-linux-gnu', and 'gcc-x86-64-linux-gnu'."
    exit 1
fi

# Step 2: Ensure there are C/C++ files to compile
cd "$SOURCE_FOLDER"

# Check if there are any .c or .cc files before proceeding
if ! compgen -G "*.c" && ! compgen -G "*.cc"; then
    echo "No C or C++ files found in $(pwd). Exiting."
    exit 0
fi

# Step 3: Compile C and C++ files (Standard + Verbose Assembly)

# Compile `.c` files **only if any exist**
if ls *.c &>/dev/null; then
    for file in *.c; do
        base_name="${file%.*}"
        echo "Compiling $file for RISC-V, ARM, and x86..."
        riscv64-linux-gnu-gcc -I/usr/riscv64-linux-gnu/include -S "$file" -o "$ASSEMBLY_OUTPUT/${base_name}.risc.s"
        riscv64-linux-gnu-gcc -I/usr/riscv64-linux-gnu/include -S -fverbose-asm "$file" -o "$ASSEMBLY_OUTPUT/${base_name}.risc.verbose.s"
        aarch64-linux-gnu-gcc -I/usr/aarch64-linux-gnu/include -S "$file" -o "$ASSEMBLY_OUTPUT/${base_name}.arm.s"
        aarch64-linux-gnu-gcc -I/usr/aarch64-linux-gnu/include -S -fverbose-asm "$file" -o "$ASSEMBLY_OUTPUT/${base_name}.arm.verbose.s"
        x86_64-linux-gnu-gcc -I/usr/x86_64-linux-gnu/include -S "$file" -o "$ASSEMBLY_OUTPUT/${base_name}.x86.s"
        x86_64-linux-gnu-gcc -I/usr/x86_64-linux-gnu/include -S -fverbose-asm "$file" -o "$ASSEMBLY_OUTPUT/${base_name}.x86.verbose.s"
    done
fi

# Compile `.cc` files **only if any exist**
if ls *.cc &>/dev/null; then
    for file in *.cc; do
        base_name="${file%.*}"
        echo "Compiling $file for RISC-V, ARM, and x86 using g++..."
        riscv64-linux-gnu-g++ -I/usr/riscv64-linux-gnu/include -S "$file" -o "$ASSEMBLY_OUTPUT/${base_name}.risc.s"
        riscv64-linux-gnu-g++ -I/usr/riscv64-linux-gnu/include -S -fverbose-asm "$file" -o "$ASSEMBLY_OUTPUT/${base_name}.risc.verbose.s"
        aarch64-linux-gnu-g++ -I/usr/aarch64-linux-gnu/include -S "$file" -o "$ASSEMBLY_OUTPUT/${base_name}.arm.s"
        aarch64-linux-gnu-g++ -I/usr/aarch64-linux-gnu/include -S -fverbose-asm "$file" -o "$ASSEMBLY_OUTPUT/${base_name}.arm.verbose.s"
        x86_64-linux-gnu-g++ -I/usr/x86_64-linux-gnu/include -S "$file" -o "$ASSEMBLY_OUTPUT/${base_name}.x86.s"
        x86_64-linux-gnu-g++ -I/usr/x86_64-linux-gnu/include -S -fverbose-asm "$file" -o "$ASSEMBLY_OUTPUT/${base_name}.x86.verbose.s"
    done 
fi

echo "Compilation complete! Assembly output is in '$ASSEMBLY_OUTPUT'."

# Step 4: Validate Output Files
echo "Validating compiled assembly files..."
EMPTY_FILES=$(find "$ASSEMBLY_OUTPUT" -type f -size 0)
NUM_ASM_FILES=$(find "$ASSEMBLY_OUTPUT" -name "*.s" | wc -l)

if [[ -n "$EMPTY_FILES" ]]; then
    echo "Warning: The following assembly files are empty:"
    echo "$EMPTY_FILES"
fi

if [[ "$NUM_ASM_FILES" -eq 0 ]]; then
    echo "Error: No assembly files were generated."
    exit 1
fi

echo "All checks passed. Compilation is complete!"
