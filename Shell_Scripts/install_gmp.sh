#!/bin/bash

set -e  # Exit immediately if a command exits with a non-zero status.

echo "🔧 Starting GMP Installation..."

# Step 1: Download GMP if not already present
if [ ! -d "gmp-6.3.0" ]; then
    echo "📥 Downloading GMP..."
    wget https://gmplib.org/download/gmp/gmp-6.3.0.tar.xz || { echo "❌ Error: Failed to download GMP."; exit 1; }
    tar -xf gmp-6.3.0.tar.xz
fi

cd gmp-6.3.0

# Step 2: Install for RISC-V
if [ ! -f "/usr/riscv64-linux-gnu/include/gmp.h" ]; then
    echo "🛠 Installing GMP for RISC-V..."
    ./configure --prefix=/usr/riscv64-linux-gnu --host=riscv64-linux-gnu
    make clean
    make -j$(nproc) || { echo "❌ Error: GMP build failed"; exit 1; }
    sudo make install || { echo "❌ Error: GMP installation failed"; exit 1; }
fi

# Step 3: Install for ARM
if [ ! -f "/usr/aarch64-linux-gnu/include/gmp.h" ]; then
    echo "🛠 Installing GMP for ARM..."
    ./configure --prefix=/usr/aarch64-linux-gnu --host=aarch64-linux-gnu
    make clean
    make -j$(nproc) || { echo "❌ Error: GMP build failed"; exit 1; }
    sudo make install || { echo "❌ Error: GMP installation failed"; exit 1; }
fi

cd ..

# Step 4: Verify GMP installation
ls /usr/riscv64-linux-gnu/include/gmp.h
ls /usr/aarch64-linux-gnu/include/gmp.h

# Step 5: Cleanup GMP installation files
rm -f gmp-6.3.0.tar.xz
rm -rf gmp-6.3.0

echo "✅ GMP Installation Completed Successfully!"

