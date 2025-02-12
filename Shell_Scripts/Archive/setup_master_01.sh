#!/bin/bash

echo "🚀 Starting full setup process..."

# Step 1: Install system dependencies
echo "🔧 Running getdependencies_vl.sh..."
chmod +x ./getdependencies_vl.sh
./getdependencies_vl.sh || { echo "❌ Error running getdependencies_vl.sh"; exit 1; }

# Step 2: Activate the environment
echo "🟢 Activating the Conda environment..."
source $HOME/miniconda3/bin/activate crosscompilers
echo "✅ Environment activated successfully!"

# Step 3: Compile assembly code
echo "🏗 Running compile_assembly.sh..."
chmod +x ./compile_assembly.sh
./compile_assembly.sh || { echo "❌ Error running compile_assembly.sh"; exit 1; }

# Step 4: Assemble binaries
echo "🔗 Running assemble_binary.sh..."
chmod +x ./assemble_binary.sh
./assemble_binary.sh || { echo "❌ Error running assemble_binary.sh"; exit 1; }

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

echo "✅ Setup completed successfully! 🎉"
echo "🔎 You can find compiled assembly files in 'assembly_output/'"
echo "🔎 You can find compiled binaries in 'assembly_output/'"
