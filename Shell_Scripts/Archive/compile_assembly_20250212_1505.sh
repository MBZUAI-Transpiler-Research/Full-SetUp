#!/bin/bash

set -e  # Exit immediately if a command exits with a non-zero status.

# Define Project Directory
PROJECT_DIR="$HOME/transpiler_project"

echo "Starting Compilation Process..."

# Step 1: Install GMP for RISC-V and ARM
if [ ! -d "gmp-6.3.0" ]; then
    echo "Downloading GMP..."
    wget https://gmplib.org/download/gmp/gmp-6.3.0.tar.xz || { echo "Error: Failed to download GMP."; exit 1; }
    tar -xf gmp-6.3.0.tar.xz
fi

cd gmp-6.3.0

# Install for RISC-V
if [ ! -f "/usr/riscv64-linux-gnu/include/gmp.h" ]; then
    echo "Installing GMP for RISC-V..."
    ./configure --prefix=/usr/riscv64-linux-gnu --host=riscv64-linux-gnu
    make clean
    make -j$(nproc) || { echo "Error: GMP build failed"; exit 1; }
    sudo make install || { echo "Error: GMP installation failed"; exit 1; }
fi

# Install for ARM
if [ ! -f "/usr/aarch64-linux-gnu/include/gmp.h" ]; then
    echo "Installing GMP for ARM..."
    ./configure --prefix=/usr/aarch64-linux-gnu --host=aarch64-linux-gnu
    make clean
    make -j$(nproc) || { echo "Error: GMP build failed"; exit 1; }
    sudo make install || { echo "Error: GMP installation failed"; exit 1; }
fi

cd ..

# Step 2: Verify GMP installation
ls /usr/riscv64-linux-gnu/include/gmp.h
ls /usr/aarch64-linux-gnu/include/gmp.h

# Cleanup GMP installation files
rm -f "$PROJECT_DIR/gmp-6.3.0.tar.xz"
rm -rf "$PROJECT_DIR/gmp-6.3.0"

# Step 3: Prepare directories
mkdir -p "$PROJECT_DIR/test_c_files"

# Step 4: Copy C and C++ files
cp "$PROJECT_DIR/hippo/data/project-euler-c/original_c/"*.c "$PROJECT_DIR/test_c_files/"
cp "$PROJECT_DIR/hippo/data/project-euler-c/original_c/"*.cc "$PROJECT_DIR/test_c_files/"

# Step 5: Confirm overwriting of assembly_output
if [ -d "$PROJECT_DIR/assembly_output" ]; then
    read -p "assembly_output already exists. Overwrite? (y/n): " overwrite_choice
    if [ "$overwrite_choice" != "y" ]; then
        echo "Exiting. Please archive assembly_output and retry."
        exit 1
    fi
fi

mkdir -p "$PROJECT_DIR/assembly_output"

# Step 6: Check for Cross Compilers Before Compilation
if ! command -v riscv64-linux-gnu-gcc &> /dev/null || ! command -v aarch64-linux-gnu-gcc &> /dev/null; then
    echo "Error: Required cross-compilers are not installed. Install 'gcc-aarch64-linux-gnu' and 'gcc-riscv64-linux-gnu'."
    exit 1
fi

# Step 7: Compile C and C++ files
echo "Starting compilation..."
cd "$PROJECT_DIR/test_c_files"

for file in *; do
    ext="${file##*.}"
    base_name="${file%.*}"
    
    if [[ "$ext" == "c" ]]; then
        echo "Compiling $file for RISC-V and ARM..."
        riscv64-linux-gnu-gcc -I/usr/riscv64-linux-gnu/include -S "$file" -o "$PROJECT_DIR/assembly_output/${base_name}.risc.s"
        aarch64-linux-gnu-gcc -I/usr/aarch64-linux-gnu/include -S "$file" -o "$PROJECT_DIR/assembly_output/${base_name}.arm.s"
    elif [[ "$ext" == "cc" ]]; then
        echo "Compiling $file for RISC-V and ARM using g++..."
        riscv64-linux-gnu-g++ -I/usr/riscv64-linux-gnu/include -S "$file" -o "$PROJECT_DIR/assembly_output/${base_name}.risc.s"
        aarch64-linux-gnu-g++ -I/usr/aarch64-linux-gnu/include -S "$file" -o "$PROJECT_DIR/assembly_output/${base_name}.arm.s"
    else
        echo "Skipping unknown file type: $file"
    fi
done

echo "Compilation complete. Output is in assembly_output."

# Step 8: Validate Output Files
echo "Validating compiled assembly files..."
EMPTY_FILES=$(find "$PROJECT_DIR/assembly_output" -type f -size 0)
NUM_ASM_FILES=$(find "$PROJECT_DIR/assembly_output" -name "*.s" | wc -l)

if [[ -n "$EMPTY_FILES" ]]; then
    echo "Warning: The following assembly files are empty:"
    echo "$EMPTY_FILES"
fi

if [[ "$NUM_ASM_FILES" -eq 0 ]]; then
    echo "Error: No assembly files were generated."
    exit 1
fi

echo "✅ All checks passed. Compilation is complete!"

