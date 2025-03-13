#!/bin/bash

set -e  # Exit on error

cd unix_commands

echo "Starting Unix Commands Testing..."

# Ensure there are executables to run
if [ ! -d "assembly_output" ]; then
    echo "Error: Assembly output folder does not exist."
    exit 1
fi

# Helper function to run QEMU if the file exists
run_qemu() {
    if [ -f "$1" ]; then
        echo "Running $1..."
        $2 "$1" "${@:3}"  # Pass additional arguments if needed
    else
        echo "Skipping $1 (not found)"
    fi
}

# --- cat ---
echo "Testing cat.c"
echo "Hello, QEMU!" > testfile.txt
run_qemu "assembly_output/cat.arm.out" qemu-aarch64 testfile.txt
run_qemu "assembly_output/cat.risc.out" qemu-riscv64 testfile.txt
run_qemu "assembly_output/cat.x86.out" qemu-x86_64 testfile.txt
rm -f testfile.txt

# --- cd ---
echo "Testing cd.c"
mkdir testdir
run_qemu "assembly_output/cd.arm.out" qemu-aarch64 testdir
run_qemu "assembly_output/cd.risc.out" qemu-riscv64 testdir
run_qemu "assembly_output/cd.x86.out" qemu-x86_64 testdir
rm -rf testdir

# --- cp ---
echo "Testing cp.c"
echo "If you can read this...." > sourcefilearm.txt
echo "... you don't need glasses" > sourcefileriscv.txt
echo "Test file for x86" > sourcefilex86.txt
run_qemu "assembly_output/cp.arm.out" qemu-aarch64 sourcefilearm.txt destfilearm.txt
run_qemu "assembly_output/cp.risc.out" qemu-riscv64 sourcefileriscv.txt destfileriscv.txt
run_qemu "assembly_output/cp.x86.out" qemu-x86_64 sourcefilex86.txt destfilex86.txt
cat destfilearm.txt  
cat destfileriscv.txt
cat destfilex86.txt
rm -f sourcefilearm.txt sourcefileriscv.txt sourcefilex86.txt destfilearm.txt destfileriscv.txt destfilex86.txt

# --- ls ---
echo "Testing ls.c"
run_qemu "assembly_output/ls.arm.out" qemu-aarch64
run_qemu "assembly_output/ls.risc.out" qemu-riscv64
run_qemu "assembly_output/ls.x86.out" qemu-x86_64

# --- mkdir ---
echo "Testing mkdir.c"
run_qemu "assembly_output/mkdir.arm.out" qemu-aarch64 armtest
run_qemu "assembly_output/mkdir.risc.out" qemu-riscv64 risctest
run_qemu "assembly_output/mkdir.x86.out" qemu-x86_64 x86test
ls -ld armtest risctest x86test
rm -rf armtest risctest x86test

# --- ps ---
echo "Testing ps.c"
run_qemu "assembly_output/ps.arm.out" qemu-aarch64 | head -n 10
run_qemu "assembly_output/ps.risc.out" qemu-riscv64 | head -n 10
run_qemu "assembly_output/ps.x86.out" qemu-x86_64 | head -n 10

# --- rm ---
echo "Testing rm.c"
TEST_FILE_ARM="armtest.txt"
TEST_FILE_RISC="risctest.txt"
TEST_FILE_X86="x86test.txt"

touch "$TEST_FILE_ARM" "$TEST_FILE_RISC" "$TEST_FILE_X86"
ls -l "$TEST_FILE_ARM" "$TEST_FILE_RISC" "$TEST_FILE_X86"

run_qemu "assembly_output/rm.arm.out" qemu-aarch64 "$TEST_FILE_ARM"
run_qemu "assembly_output/rm.risc.out" qemu-riscv64 "$TEST_FILE_RISC"
run_qemu "assembly_output/rm.x86.out" qemu-x86_64 "$TEST_FILE_X86"

# Verify files were deleted
if [[ ! -e "$TEST_FILE_ARM" && ! -e "$TEST_FILE_RISC" && ! -e "$TEST_FILE_X86" ]]; then
    echo "Test files successfully deleted!"
else
    echo "Some test files still exist!"
    ls -l "$TEST_FILE_ARM" "$TEST_FILE_RISC" "$TEST_FILE_X86"
fi

# --- rmdir ---
echo "Testing rmdir.c"
mkdir test_arm test_riscv test_x86
ls
run_qemu "assembly_output/rmdir.arm.out" qemu-aarch64 test_arm
run_qemu "assembly_output/rmdir.risc.out" qemu-riscv64 test_riscv
run_qemu "assembly_output/rmdir.x86.out" qemu-x86_64 test_x86
ls

# --- touch ---
echo "Testing touch.c"
TEST_FILE_ARM="touch_test_arm.txt"
TEST_FILE_RISC="touch_test_risc.txt"
TEST_FILE_X86="touch_test_x86.txt"
touch "$TEST_FILE_ARM" "$TEST_FILE_RISC" "$TEST_FILE_X86"

echo "Checking timestamps before modification"
ls --full-time "$TEST_FILE_ARM" "$TEST_FILE_RISC" "$TEST_FILE_X86"

sleep 3  # Ensure timestamp change is visible

run_qemu "assembly_output/touch.arm.out" qemu-aarch64 "$TEST_FILE_ARM"
run_qemu "assembly_output/touch.risc.out" qemu-riscv64 "$TEST_FILE_RISC"
run_qemu "assembly_output/touch.x86.out" qemu-x86_64 "$TEST_FILE_X86"

echo "Checking timestamps after modification"
ls --full-time "$TEST_FILE_ARM"
ls --full-time "$TEST_FILE_RISC" 
ls --full-time "$TEST_FILE_X86"

rm -f "$TEST_FILE_ARM" "$TEST_FILE_RISC" "$TEST_FILE_X86"

# --- tee ---
echo "Skipping automated testing for tee.c"
echo "Run manually:"
echo "  qemu-aarch64 assembly_output/tee.arm.out test_output_arm.txt"
echo "  qemu-riscv64 assembly_output/tee.risc.out test_output_risc.txt"
echo "  qemu-x86_64 assembly_output/tee.x86.out test_output_x86.txt"

# --- xargs ---
echo "Skipping automated testing for xargs.c"
echo "Run manually:"
echo "  qemu-aarch64 assembly_output/xargs.arm.out"
echo "  qemu-riscv64 assembly_output/xargs.risc.out"
echo "  qemu-x86_64 assembly_output/xargs.x86.out"

echo "Unix Commands Testing Completed!"
