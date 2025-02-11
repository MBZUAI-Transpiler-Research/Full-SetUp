cd ~/transpiler_project/assembly_output

# Run ARM executables
for i in {1..10}; do
    echo "Running ARM problem$i output..."
    qemu-aarch64 -L /usr/aarch64-linux-gnu ./problem$i.arm.out
    echo "Running RISCV problem$i  output..."
    qemu-riscv64 -L /usr/riscv64-linux-gnu ./problem$i.risc.out
done

