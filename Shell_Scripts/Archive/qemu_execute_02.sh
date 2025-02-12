#!/bin/bash

cd ~/transpiler_project/assembly_output

# Ensure names.txt and words.txt are available
if [ ! -f "names.txt" ]; then
    echo "Downloading names.txt..."
    wget -O names.txt "https://raw.githubusercontent.com/eagletmt/project-euler-c/master/20-29/names.txt"
fi

if [ ! -f "words.txt" ]; then
    echo "Downloading words.txt..."
    wget -O words.txt "https://raw.githubusercontent.com/eagletmt/project-euler-c/master/40-49/words.txt"
fi

# Run all executables dynamically
for file in *.out; do
    echo "Running $file..."

    if [[ "$file" == *.arm.out ]]; then
        qemu-aarch64 -L /usr/aarch64-linux-gnu "./$file"
    elif [[ "$file" == *.risc.out ]]; then
        qemu-riscv64 -L /usr/riscv64-linux-gnu "./$file"
    else
        echo "Skipping unknown file: $file"
    fi
done
