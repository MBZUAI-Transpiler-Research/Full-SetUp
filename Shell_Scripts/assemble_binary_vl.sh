#!/bin/bash

set -e  # Exit on error

# Ensure an argument is provided
if [ -z "$1" ]; then
    echo "Error: No source folder provided."
    echo "Usage: $0 <source_folder>"
    exit 1
fi

SOURCE_FOLDER="$1"
ASSEMBLY_FOLDER="$SOURCE_FOLDER/assembly_output"

echo "Starting linking process for assembly files in '$ASSEMBLY_FOLDER'..."

# Ensure required compilers exist
if ! command -v aarch64-linux-gnu-gcc &> /dev/null || \
   ! command -v riscv64-linux-gnu-gcc &> /dev/null || \
   ! command -v x86_64-linux-gnu-gcc &> /dev/null; then
    echo "Error: Required cross-compilers are not installed."
    echo "Install: gcc-aarch64-linux-gnu, gcc-riscv64-linux-gnu, and gcc-x86-64-linux-gnu."
    exit 1
fi


# Ensure the assembly output folder exists
if [ ! -d "$ASSEMBLY_FOLDER" ]; then
    echo "Error: Assembly folder '$ASSEMBLY_FOLDER' does not exist."
    exit 1
fi

cd "$ASSEMBLY_FOLDER" || { echo "Error: Failed to enter assembly_output directory"; exit 1; }

# Ensure there are `.s` files to process
shopt -s nullglob  # Prevents `*.s` from expanding to "*.s" if no files exist
assembly_files=(*.s)
if [ ${#assembly_files[@]} -eq 0 ]; then
    echo "No assembly files found in '$ASSEMBLY_FOLDER'. Exiting."
    exit 0
fi

for file in $(ls *.s | grep -v ".verbose.s"); do
    base_name=$(basename "$file" .s)  # Extracts "problemXX.arch"
    problem_number="${base_name%.*}"  # Extracts "problemXX"
    arch="${base_name##*.}"           # Extracts "arm", "risc", or "x86"

    src_file="$SOURCE_FOLDER/${problem_number}.c"
    cpp_src_file="$SOURCE_FOLDER/${problem_number}.cc"

    # Determine compiler (g++ for C++, gcc for C)
    if [[ -f "$cpp_src_file" ]]; then
        compiler_arm="aarch64-linux-gnu-g++"
        compiler_risc="riscv64-linux-gnu-g++"
        compiler_x86="x86_64-linux-gnu-g++"
    else
        compiler_arm="aarch64-linux-gnu-gcc"
        compiler_risc="riscv64-linux-gnu-gcc"
        compiler_x86="x86_64-linux-gnu-gcc"
    fi

    # Determine if we need to link against GMP or libm
    linker_flags=""
    if [[ -f "$src_file" ]]; then
        grep -q '#include <gmp.h>' "$src_file" && linker_flags="$linker_flags -lgmp"
        grep -q '#include <math.h>' "$src_file" && linker_flags="$linker_flags -lm"
    elif [[ -f "$cpp_src_file" ]]; then
        grep -q '#include <gmp.h>' "$cpp_src_file" && linker_flags="$linker_flags -lgmp"
        grep -q '#include <math.h>' "$cpp_src_file" && linker_flags="$linker_flags -lm"
    fi

    # Perform linking
    if [[ "$arch" == "arm" ]]; then
        echo "Linking $file for ARM..."
        $compiler_arm "$file" -o "${problem_number}.arm.out" -static $linker_flags || { echo "❌ Error: ARM linking failed for $file"; exit 1; }
    elif [[ "$arch" == "risc" ]]; then
        echo "Linking $file for RISC-V..."
        $compiler_risc "$file" -o "${problem_number}.risc.out" -static $linker_flags || { echo "❌ Error: RISC-V linking failed for $file"; exit 1; }
    elif [[ "$arch" == "x86" ]]; then
        echo "Linking $file for x86..."
        $compiler_x86 "$file" -o "${problem_number}.x86.out" -static $linker_flags || { echo "❌ Error: x86 linking failed for $file"; exit 1; }
    else
        echo "Skipping unknown file format: $file"
    fi
done

echo "Linking complete for all problems! Ready to run executables."
