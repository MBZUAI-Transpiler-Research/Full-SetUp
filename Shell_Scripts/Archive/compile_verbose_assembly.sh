#!/bin/bash

set -e  # Exit on error

echo "Starting compilation process with verbose assembly output..."

cd ~/transpiler_project/test_c_files

for file in *; do
    ext="${file##*.}"
    base_name="${file%.*}"
    
    if [[ "$ext" == "c" ]]; then
        echo "Compiling $file for RISC-V and ARM (verbose)..."
        riscv64-linux-gnu-gcc -I/usr/riscv64-linux-gnu/include -S -fverbose-asm "$file" -o "../assembly_output/${base_name}.risc.verbose.s"
        aarch64-linux-gnu-gcc -I/usr/aarch64-linux-gnu/include -S -fverbose-asm "$file" -o "../assembly_output/${base_name}.arm.verbose.s"
    elif [[ "$ext" == "cc" ]]; then
        echo "Compiling $file for RISC-V and ARM using g++ (verbose)..."
        riscv64-linux-gnu-g++ -I/usr/riscv64-linux-gnu/include -S -fverbose-asm "$file" -o "../assembly_output/${base_name}.risc.verbose.s"
        aarch64-linux-gnu-g++ -I/usr/aarch64-linux-gnu/include -S -fverbose-asm "$file" -o "../assembly_output/${base_name}.arm.verbose.s"
    else
        echo "Skipping unknown file type: $file"
    fi
done

echo "Verbose assembly compilation complete. Output is in assembly_output."

