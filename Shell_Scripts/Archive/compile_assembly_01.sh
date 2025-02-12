#!/bin/bash

set -e  # Exit immediately if a command exits with a non-zero status.

# Step 1: Install GMP for RISC-V and ARM
if [ ! -d "gmp-6.3.0" ]; then
    wget https://gmplib.org/download/gmp/gmp-6.3.0.tar.xz
    tar -xf gmp-6.3.0.tar.xz
fi

cd gmp-6.3.0

# Install for RISC-V
if [ ! -f "/usr/riscv64-linux-gnu/include/gmp.h" ]; then
    echo "Installing GMP for RISC-V..."
    ./configure --prefix=/usr/riscv64-linux-gnu --host=riscv64-linux-gnu
    make clean
    make -j$(nproc)
    sudo make install
fi

# Install for ARM
if [ ! -f "/usr/aarch64-linux-gnu/include/gmp.h" ]; then
    echo "Installing GMP for ARM..."
    ./configure --prefix=/usr/aarch64-linux-gnu --host=aarch64-linux-gnu
    make clean
    make -j$(nproc)
    sudo make install
fi

cd ..

# Step 2: Verify GMP installation
ls /usr/riscv64-linux-gnu/include/gmp.h
ls /usr/aarch64-linux-gnu/include/gmp.h

rm -f ~/transpiler_project/gmp-6.3.0.tar.xz
rm -rf ~/transpiler_project/gmp-6.3.0

# Step 3: Prepare directories
mkdir -p ~/transpiler_project/test_c_files

# Step 4: Copy C and C++ files to test_c_files
cp ~/transpiler_project/hippo/data/project-euler-c/original_c/*.c ~/transpiler_project/test_c_files/
cp ~/transpiler_project/hippo/data/project-euler-c/original_c/*.cc ~/transpiler_project/test_c_files/

# Step 5: Confirm overwriting of assembly_output
if [ -d ~/transpiler_project/assembly_output ]; then
    read -p "assembly_output already exists. Overwrite? (y/n): " overwrite_choice
    if [ "$overwrite_choice" != "y" ]; then
        echo "Exiting. Please archive assembly_output and retry."
        exit 1
    fi
fi

mkdir -p ~/transpiler_project/assembly_output #create new if not extant

# Step 6: Compile C and C++ files
echo "Starting compilation..."
cd ~/transpiler_project/test_c_files

for file in *; do
    ext="${file##*.}"
    base_name="${file%.*}"
    
    if [[ "$ext" == "c" ]]; then
        echo "Compiling $file for RISC-V and ARM..."
        riscv64-linux-gnu-gcc -I/usr/riscv64-linux-gnu/include -S "$file" -o "../assembly_output/${base_name}.risc.s"
        aarch64-linux-gnu-gcc -I/usr/aarch64-linux-gnu/include -S "$file" -o "../assembly_output/${base_name}.arm.s"
    elif [[ "$ext" == "cc" ]]; then
        echo "Compiling $file for RISC-V and ARM using g++..."
        riscv64-linux-gnu-g++ -I/usr/riscv64-linux-gnu/include -S "$file" -o "../assembly_output/${base_name}.risc.s"
        aarch64-linux-gnu-g++ -I/usr/aarch64-linux-gnu/include -S "$file" -o "../assembly_output/${base_name}.arm.s"
    else
        echo "Skipping unknown file type: $file"
    fi
done

echo "Compilation complete. Output is in assembly_output."

# Step 7: Validate output files
find ~/transpiler_project/assembly_output -type f -size 0 -exec echo "Warning: Empty file found - {}" \;

