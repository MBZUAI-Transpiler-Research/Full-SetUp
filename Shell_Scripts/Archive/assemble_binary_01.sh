#!/bin/bash

set -e  # Exit on error

echo "Starting linking process for all problems..."

cd ~/transpiler_project/assembly_output

for file in *.s; do
    base_name=$(basename "$file" .s)  # Extracts "problemXX.arch"
    problem_number="${base_name%.*}"  # Extracts "problemXX"
    arch="${base_name##*.}"           # Extracts "arm" or "risc"

    src_file="../test_c_files/${problem_number}.c"
    cpp_src_file="../test_c_files/${problem_number}.cc"

    # Determine compiler (g++ for C++, gcc for C)
    if [[ -f "$cpp_src_file" ]]; then
        compiler_arm="aarch64-linux-gnu-g++"
        compiler_risc="riscv64-linux-gnu-g++"
    else
        compiler_arm="aarch64-linux-gnu-gcc"
        compiler_risc="riscv64-linux-gnu-gcc"
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
        $compiler_arm "$file" -o "${problem_number}.arm.out" -static $linker_flags
    elif [[ "$arch" == "risc" ]]; then
        $compiler_risc "$file" -o "${problem_number}.risc.out" -static $linker_flags
    fi
done

echo "Linking complete for all problems! Ready to run executables."
