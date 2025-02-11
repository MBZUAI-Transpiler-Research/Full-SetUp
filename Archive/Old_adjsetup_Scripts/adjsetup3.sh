#!/bin/bash


wget https://gmplib.org/download/gmp/gmp-6.3.0.tar.xz
tar -xf gmp-6.3.0.tar.xz
cd gmp-6.3.0
./configure --prefix=/usr/riscv64-linux-gnu --host=riscv64-linux-gnu
make -j$(nproc)
sudo make install
cd ..

cd gmp-6.3.0
./configure --prefix=/usr/aarch64-linux-gnu --host=aarch64-linux-gnu
make -j$(nproc)
sudo make install
cd ..

ls /usr/riscv64-linux-gnu/include/gmp.h
ls /usr/aarch64-linux-gnu/include/gmp.h

mkdir -p ~/transpiler_project/test_c_files
mkdir -p ~/transpiler_project/assembly_output

cp ~/transpiler_project/hippo/data/project-euler-c/original_c/*.c ~/transpiler_project/test_c_files/

cd ~/transpiler_project/test_c_files
for file in *.c; do
    riscv64-linux-gnu-gcc -I/usr/riscv64-linux-gnu/include -S "$file" -o "../assembly_output/${file%.c}.risc.s"
    aarch64-linux-gnu-gcc -I/usr/aarch64-linux-gnu/include -S "$file" -o "../assembly_output/${file%.c}.arm.s"
done

ls ~/transpiler_project/assembly_output


Looks good, but a few points.

1. do we need to add make clean before make -j$(nproc) with ARM?
2. should we include ls /usr/riscv64-linux-gnu/include/gmp.h
ls /usr/aarch64-linux-gnu/include/gmp.h to test if we are ok?
3. do we need both cp ~/transpiler_project/hippo/data/project-euler-c/original_c/*.c ~/transpiler_project/test_c_files/ and cp ~/transpiler_project/hippo/data/project-euler-c/original_c/*.cc ~/transpiler_project/test_c_files/? it seemed to copy both sets of files with just cp ~/transpiler_project/hippo/data/project-euler-c/original_c/*.c ~/transpiler_project/test_c_files/ before
4. presumably this overwrites everything that would exist in assembly_output. can we add a line right after "starting compilation" that basically says "assembly_output already exists. Do you want to overwrite? Otherwise enter n to exit, then archive and try again" or something similar?
