#!/bin/bash

set -e  # Exit immediately if a command fails

PROJECT_DIR="$HOME/transpiler_project"
ASSEMBLY_DIR="$PROJECT_DIR/assembly_output"

cd "$ASSEMBLY_DIR" || { echo "Error: Failed to enter $ASSEMBLY_DIR"; exit 1; }

# Ensure QEMU is installed
if ! command -v qemu-aarch64 &> /dev/null || ! command -v qemu-riscv64 &> /dev/null; then
    echo "❌ Error: QEMU is not installed. Please install 'qemu-user' and 'qemu-user-static'."
    exit 1
fi

# Ensure names.txt and words.txt are available
if [ ! -f "names.txt" ]; then
    echo "📥 Downloading names.txt..."
    wget -O names.txt "https://raw.githubusercontent.com/eagletmt/project-euler-c/master/20-29/names.txt"
fi

if [ ! -f "words.txt" ]; then
    echo "📥 Downloading words.txt..."
    wget -O words.txt "https://raw.githubusercontent.com/eagletmt/project-euler-c/master/40-49/words.txt"
fi

# Ensure there are executables to run
shopt -s nullglob  # Prevents "*.out" from expanding if no files exist
out_files=(*.out)
if [ ${#out_files[@]} -eq 0 ]; then
    echo "❌ No executables found in $(pwd). Exiting."
    exit 0
fi

# Run all executables dynamically
for file in *.out; do
    echo "🚀 Running $file..."
    
    if [[ "$file" == *.arm.out ]]; then
        qemu-aarch64 -L /usr/aarch64-linux-gnu "./$file"
    elif [[ "$file" == *.risc.out ]]; then
        qemu-riscv64 -L /usr/riscv64-linux-gnu "./$file"
    else
        echo "⚠️ Skipping unknown file: $file"
    fi
done

echo "✅ All executables ran successfully!"
