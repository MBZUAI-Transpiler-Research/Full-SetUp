#!/bin/bash

echo "🚀 Starting full setup process..."

# Ensure a project name is provided
if [ -z "$1" ]; then
    echo "❌ Error: No project name provided."
    echo "Usage: $0 <project_name>"
    exit 1
fi

PROJECT_NAME=$1

# Step 0: Install Conda if missing
if [ ! -d "$HOME/miniconda3" ]; then
    echo "📥 Installing Conda..."
    chmod +x ./getconda_vl.sh
    ./getconda_vl.sh || { echo "❌ Error installing Conda"; exit 1; }
    echo "🔄 Restart your terminal OR run: source ~/.bashrc"
    echo "Then you can run this script again, which automatically skips Step 0"
    exit 0  # Stop script execution after installing Conda
fi

# Step 1: Install system dependencies
echo "🔧 Running getdependencies_vl.sh with project name '$PROJECT_NAME'..."
chmod +x ./getdependencies_vl.sh
./getdependencies_vl.sh "$PROJECT_NAME" || { echo "❌ Error running getdependencies_vl.sh"; exit 1; }

# Step 2: Activate the environment
echo "🟢 Activating the Conda environment..."
source $HOME/miniconda3/bin/activate crosscompilers
echo "✅ Environment activated successfully!"

# Step 3: Compile assembly code
echo "🏗 Running compile_assembly.sh..."
chmod +x ./compile_assembly_vl.sh
./compile_assembly_vl.sh || { echo "❌ Error running compile_assembly.sh"; exit 1; }

# Step 4: Assemble binaries
echo "🔗 Running assemble_binary.sh..."
chmod +x ./assemble_binary_vl.sh
./assemble_binary_vl.sh || { echo "❌ Error running assemble_binary.sh"; exit 1; }

# Step 5: Verify output files
echo "📂 Checking output files..."
assembly_files=$(find assembly_output -type f -name "*.s")
binary_files=$(find assembly_output -type f -name "*.out")

if [[ -z "$assembly_files" ]]; then
    echo "❌ Error: No assembly files were generated."
    exit 1
fi

if [[ -z "$binary_files" ]]; then
    echo "❌ Error: No binary executables were generated."
    exit 1
fi

# Step 6: Compile with Verbose Assembly Output
echo "🔍 Running compile_verbose_assembly.sh..."
chmod +x ./compile_verbose_assembly_vl.sh
./compile_verbose_assembly_vl.sh || { echo "❌ Error running compile_verbose_assembly.sh"; exit 1; }

# Step 7: Run Executables with QEMU
echo "🚀 Running qemu_execute_vl.sh..."
chmod +x ./qemu_execute_vl.sh
./qemu_execute_vl.sh || { echo "❌ Error running qemu_execute_vl.sh"; exit 1; }

echo "✅ Full setup process completed successfully! 🎉"
echo "🔎 You can find compiled assembly files in 'assembly_output/'"
echo "🔎 You can find compiled binaries in 'assembly_output/'"
echo "🏁 All executables have been run successfully with QEMU!"
