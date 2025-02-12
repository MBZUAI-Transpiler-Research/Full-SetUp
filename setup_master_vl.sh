#!/bin/bash

echo "🚀 Starting full setup process..."

# Ensure a project name is provided
if [ -z "$1" ]; then
    echo "❌ Error: No project name provided."
    echo "Usage: $0 <project_name>"
    exit 1
fi

PROJECT_NAME=$1
EULER_DIR="$HOME/transpiler_project/euler"

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
chmod +x Shell_Scripts/getdependencies_vl.sh
Shell_Scripts/getdependencies_vl.sh "$PROJECT_NAME" || { echo "❌ Error running getdependencies_vl.sh"; exit 1; }

# Step 2: Activate the environment
echo "🟢 Activating the Conda environment..."
source $HOME/miniconda3/bin/activate crosscompilers
echo "✅ Environment activated successfully!"

# Step 3: Install GMP 
echo "🛠 Installing GMP if needed..."
chmod +x Shell_Scripts/install_gmp.sh
Shell_Scripts/install_gmp.sh || { echo "❌ Error installing GMP"; exit 1; }

# Step 4: Copy Euler C files into `euler/`
mkdir -p "$EULER_DIR"
echo "📂 Copying Euler C files into '$EULER_DIR'..."
cp "$HOME/transpiler_project/$PROJECT_NAME/data/project-euler-c/original_c/"*.c "$EULER_DIR/"
cp "$HOME/transpiler_project/$PROJECT_NAME/data/project-euler-c/original_c/"*.cc "$EULER_DIR/"

# Step 5: Compile assembly code (passing `euler/` explicitly)
echo "🏗 Running compile_assembly.sh on '$EULER_DIR'..."
chmod +x Shell_Scripts/compile_assembly_vl.sh
Shell_Scripts/compile_assembly_vl.sh "$EULER_DIR" || { echo "❌ Error running compile_assembly.sh"; exit 1; }

# Step 6: Assemble binaries (now just pass `EULER_DIR`)
echo "🔗 Running assemble_binary.sh on '$EULER_DIR'..."
chmod +x Shell_Scripts/assemble_binary_vl.sh
Shell_Scripts/assemble_binary_vl.sh "$EULER_DIR" || { echo "❌ Error running assemble_binary.sh"; exit 1; }

# Step 7: Verify output files
echo "📂 Checking output files..."
assembly_files=$(find "$EULER_DIR/assembly_output" -type f -name "*.s")
binary_files=$(find "$EULER_DIR/assembly_output" -type f -name "*.out")

if [[ -z "$assembly_files" ]]; then
    echo "❌ Error: No assembly files were generated."
    exit 1
fi

if [[ -z "$binary_files" ]]; then
    echo "❌ Error: No binary executables were generated."
    exit 1
fi

# Step 8: Run Executables with QEMU
echo "🚀 Running qemu_execute_vl.sh on '$EULER_DIR'..."
chmod +x Shell_Scripts/qemu_execute_vl.sh
Shell_Scripts/qemu_execute_vl.sh "$EULER_DIR" || { echo "❌ Error running qemu_execute_vl.sh"; exit 1; }

echo "✅ Full setup process completed successfully! 🎉"
echo "🔎 You can find compiled assembly files in '$EULER_DIR/assembly_output/'"
echo "🔎 You can find compiled binaries in '$EULER_DIR/assembly_output/'"
echo "🏁 All executables have been run successfully with QEMU!"
