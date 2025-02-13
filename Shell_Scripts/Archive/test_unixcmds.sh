cd unix_commands

## cat.c
echo "Hello, QEMU!" > testfile.txt
qemu-aarch64 assembly_output/cat.arm.out testfile.txt
qemu-riscv64 assembly_output/cat.risc.out testfile.txt
rm -f testfile.txt

## cd.c
mkdir testdir
qemu-aarch64 assembly_output/cd.arm.out testdir
qemu-aarch64 assembly_output/cd.arm.out testdir
rm -rf testdir

## cp.c
echo "If you can read this...." > sourcefilearm.txt
echo "... you don't need glasses" > sourcefileriscv.txt
qemu-aarch64 assembly_output/cp.arm.out sourcefilearm.txt destfilearm.txt
qemu-riscv64 assembly_output/cp.risc.out sourcefileriscv.txt destfileriscv.txt
cat destfilearm.txt  
cat destfileriscv.txt
rm -f sourcefilearm.txt sourcefileriscv.txt destfilearm.txt destfileriscv.txt


# ls.c
echo "🔹 Running ls (basic)"
qemu-aarch64 assembly_output/ls.arm.out
qemu-riscv64 assembly_output/ls.risc.out
echo "🔹 Running ls -R (recursive)"
qemu-aarch64 assembly_output/ls.arm.out -R
qemu-riscv64 assembly_output/ls.risc.out -R

# mkdir.c
qemu-aarch64 assembly_output/mkdir.arm.out armtest
qemu-riscv64 assembly_output/mkdir.risc.out risctest
ls -ld armtest risctest
rm -rf armtest risctest

# ps.c
echo "🔹 Running ps (process listing)"
qemu-aarch64 assembly_output/ps.arm.out | head -n 10
qemu-riscv64 assembly_output/ps.risc.out | head -n 10

# rm.c
TEST_FILE_ARM="armtest.txt"
TEST_FILE_RISC="risctest.txt"

echo "🔹 Creating test files"
touch "$TEST_FILE_ARM" "$TEST_FILE_RISC"
ls -l "$TEST_FILE_ARM" "$TEST_FILE_RISC"  # Confirm creation

echo "🔹 Running rm (delete files)"
qemu-aarch64 assembly_output/rm.arm.out "$TEST_FILE_ARM"
qemu-riscv64 assembly_output/rm.risc.out "$TEST_FILE_RISC"

# Verify files were deleted
if [[ ! -e "$TEST_FILE_ARM" && ! -e "$TEST_FILE_RISC" ]]; then
    echo "✅ Test files successfully deleted!"
else
    echo "❌ Some test files still exist!"
    ls -l "$TEST_FILE_ARM" "$TEST_FILE_RISC"
fi

# rmdir.c
mkdir test_arm test_riscv
ls
qemu-aarch64 assembly_output/rmdir.arm.out test_arm
ls
qemu-riscv64 assembly_output/rmdir.risc.out test_riscv
ls

# touch.c
echo "🔹 Creating test file"
TEST_FILE_ARM="touch_test_arm.txt"
TEST_FILE_RISC="touch_test_risc.txt"
touch "$TEST_FILE_ARM" "$TEST_FILE_RISC"

# Check timestamps before
echo "🔹 Checking timestamps before modification (with seconds)"
ls --full-time "$TEST_FILE_ARM" "$TEST_FILE_RISC"

# Add a delay to ensure timestamp change is visible
echo "⏳ Waiting for 3 seconds..."
sleep 3

# Run the compiled touch binary
echo "🔹 Running touch to modify timestamps"
qemu-aarch64 assembly_output/touch.arm.out "$TEST_FILE_ARM"
qemu-riscv64 assembly_output/touch.risc.out "$TEST_FILE_RISC"

# Check timestamps after
echo "🔹 Checking timestamps after modification (with seconds)"
ls --full-time "$TEST_FILE_ARM" "$TEST_FILE_RISC"

# Cleanup
rm -f "$TEST_FILE_ARM" "$TEST_FILE_RISC"


# tee.c
echo "--------------------------------------------------------------"
echo "Alas, Poor Yorick! Cannot easily test tee.c within the shell"
echo "Run the commands below in the shell individually and enter words"
echo "Then hit ctrl + C to exit and view the files with cat test_output_arm.txt and test_output_risc.txt"
echo "Lastly don't forget to clean up with rm -f test_output_arm.txt test_output_risc.txt"
echo "qemu-aarch64 assembly_output/tee.arm.out test_output_arm.txt"
echo "qemu-riscv64 assembly_output/tee.risc.out test_output_risc.txt"
echo "rm -f test_output_arm.txt test_output_risc.txt"

# xargs.c
echo "--------------------------------------------------------------"
echo "Alas, Poor Yorick! Cannot easily test xargs.c within the script"
echo "Run the commands below in the shell individually and enter words"
echo "Then hit Ctrl+D to stop and see the contents of lm.txt"
echo "Lastly, don't forget to clean up with rm -f lm.txt"
echo ""
echo "qemu-aarch64 assembly_output/xargs.arm.out"
echo "qemu-riscv64 assembly_output/xargs.risc.out"
echo "cat lm.txt"
echo "rm -f lm.txt"
