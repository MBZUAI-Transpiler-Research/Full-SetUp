#!/bin/bash

set -e  # Exit on error

PROJECT_DIR="$HOME/transpiler_project"
TEST_FILES_DIR="$PROJECT_DIR/test_c_files"
ASSEMBLY_OUTPUT_DIR="$PROJECT_DIR/assembly_output"

echo "🚀 Starting compilation process with verbose assembly output..."

# Ensure required compilers exist
if ! command -v riscv64-linux-gnu-gcc &> /dev/null || ! command -v aarch64-linux-gnu-gcc &> /dev/null; then
    echo "❌ Error: Required cross-compilers are not installed. Install 'gcc-aarch64-linux-gnu' and 'gcc-riscv64-linux-gnu'."
    exit 1
fi

# Change to test_c_files directory
cd "$TEST_FILES_DIR" || { echo "❌ Error: Failed to enter $TEST_FILES_DIR"; exit 1; }

# Ensure there are source files to compile
shopt -s nullglob  # Prevents '*' from expanding if no files exist
source_files=(*.c *.cc)
if [ ${#source_files[@]} -eq 0 ]; then
    echo "❌ No C or C++ files found in $(pwd). Exiting."
    exit 0
fi

# Compile each file with verbose assembly output
for file in "${source_files[@]}"; do
    ext="${file##*.}"
    base_name="${file%.*}"
    
    if [[ "$ext" == "c" ]]; then
        echo "🛠 Compiling $file for RISC-V and ARM (verbose)..."
        riscv64-linux-gnu-gcc -I/usr/riscv64-linux-gnu/include -S -fverbose-asm "$file" -o "$ASSEMBLY_OUTPUT_DIR/${base_name}.risc.verbose.s"
        aarch64-linux-gnu-gcc -I/usr/aarch64-linux-gnu/include -S -fverbose-asm "$file" -o "$ASSEMBLY_OUTPUT_DIR/${base_name}.arm.verbose.s"
    elif [[ "$ext" == "cc" ]]; then
        echo "🛠 Compiling $file for RISC-V and ARM using g++ (verbose)..."
        riscv64-linux-gnu-g++ -I/usr/riscv64-linux-gnu/include -S -fverbose-asm "$file" -o "$ASSEMBLY_OUTPUT_DIR/${base_name}.risc.verbose.s"
        aarch64-linux-gnu-g++ -I/usr/aarch64-linux-gnu/include -S -fverbose-asm "$file" -o "$ASSEMBLY_OUTPUT_DIR/${base_name}.arm.verbose.s"
    else
        echo "⚠️ Skipping unknown file type: $file"
    fi
done

echo "✅ Verbose assembly compilation complete! Output is in $ASSEMBLY_OUTPUT_DIR."

