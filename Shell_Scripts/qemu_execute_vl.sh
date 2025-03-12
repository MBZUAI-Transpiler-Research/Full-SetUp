#!/bin/bash

set -e  # Exit immediately if a command fails

# Ensure an argument is provided
if [ -z "$1" ]; then
    echo "Error: No source folder provided."
    echo "Usage: $0 <source_folder>"
    exit 1
fi

SOURCE_FOLDER="$1"
ASSEMBLY_DIR="$SOURCE_FOLDER/assembly_output"

echo "Starting QEMU execution for binaries in '$ASSEMBLY_DIR'..."

# Ensure QEMU is installed
if ! command -v qemu-aarch64 &> /dev/null || \
   ! command -v qemu-riscv64 &> /dev/null || \
   ! command -v qemu-x86_64 &> /dev/null; then
    echo "Error: QEMU is not installed. Please install 'qemu-user' and 'qemu-user-static'."
    exit 1
fi

# Ensure the assembly output folder exists
if [ ! -d "$ASSEMBLY_DIR" ]; then
    echo "Error: Assembly folder '$ASSEMBLY_DIR' does not exist."
    exit 1
fi

cd "$ASSEMBLY_DIR" || { echo "Error: Failed to enter '$ASSEMBLY_DIR'"; exit 1; }

# Ensure there are executables to run
shopt -s nullglob  # Prevents "*.out" from expanding if no files exist
out_files=(*.out)
if [ ${#out_files[@]} -eq 0 ]; then
    echo "No executables found in '$ASSEMBLY_DIR'. Exiting."
    exit 0
fi

# Ensure names.txt and words.txt are available in the working directory
if [ -f "$SOURCE_FOLDER/names.txt" ]; then
    cp "$SOURCE_FOLDER/names.txt" "$ASSEMBLY_DIR/"
fi

if [ -f "$SOURCE_FOLDER/words.txt" ]; then
    cp "$SOURCE_FOLDER/words.txt" "$ASSEMBLY_DIR/"
fi

# Run all executables dynamically
for file in *.out; do
    echo "Running $file..."
    
    if [[ "$file" == *.arm.out ]]; then
        qemu-aarch64 -L /usr/aarch64-linux-gnu "./$file"
    elif [[ "$file" == *.risc.out ]]; then
        qemu-riscv64 -L /usr/riscv64-linux-gnu "./$file"
    elif [[ "$file" == *.x86.out ]]; then
        qemu-x86_64 -L /usr/x86_64-linux-gnu "./$file"
    else
        echo "Skipping unknown file: $file"
    fi
done

echo "All executables ran successfully!"
