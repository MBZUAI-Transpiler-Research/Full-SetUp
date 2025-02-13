#!/bin/bash

echo "🚀 Starting Unix Commands Compilation Setup..."

echo "🟢 Checking Conda initialization..."
source $HOME/miniconda3/etc/profile.d/conda.sh || { echo "❌ Conda initialization failed"; exit 1; }
conda activate crosscompilers || { echo "❌ Error activating Conda environment"; exit 1; }

# Define project directory
PROJECT_NAME="unix_commands"
PROJECT_SOURCE="$HOME/transpiler_project/$PROJECT_NAME"

# Step 1: Clone the Unix Commands repository if not already present
if [ ! -d "$PROJECT_SOURCE" ]; then
    echo "📥 Cloning Unix Commands repository into '$PROJECT_SOURCE'..."
    git clone https://github.com/yadu007/Basic-Unix-Commands-Implementation.git "$PROJECT_SOURCE" || { echo "❌ Error cloning repository"; exit 1; }
    rm -rf unix_commands/.git
else
    echo "✅ Unix Commands repository already exists in '$PROJECT_SOURCE'."
fi

# Step 2: Prepare directories
mkdir -p "$PROJECT_SOURCE/assembly_output"

# Step 3: Activate the environment
echo "🟢 Activating the Conda environment..."
source $HOME/miniconda3/bin/activate crosscompilers
echo "✅ Environment activated successfully!"

# Step 4: Install GMP (if needed)
echo "🛠 Installing GMP if required..."
chmod +x Shell_Scripts/install_gmp.sh
Shell_Scripts/install_gmp.sh || { echo "❌ Error installing GMP"; exit 1; }

# Step 5: Add in missing headers
echo "🔧 Fixing missing headers in '$PROJECT_SOURCE'..."
chmod +x Shell_Scripts/fix_missing_headers.sh
Shell_Scripts/fix_missing_headers.sh "$PROJECT_SOURCE"

# Step 6: Compile Unix Commands into Assembly
echo "🏗 Running compile_assembly_vl.sh on '$PROJECT_SOURCE'..."
chmod +x Shell_Scripts/compile_assembly_vl.sh
Shell_Scripts/compile_assembly_vl.sh "$PROJECT_SOURCE" || { echo "❌ Error during assembly compilation"; exit 1; }

# Step 7: Assemble Binaries
echo "🔗 Running assemble_binary_vl.sh on '$PROJECT_SOURCE'..."
chmod +x Shell_Scripts/assemble_binary_vl.sh
Shell_Scripts/assemble_binary_vl.sh "$PROJECT_SOURCE" || { echo "❌ Error assembling binaries"; exit 1; }

# Step 8: Test Files
echo "🔗 Running test_unixcmds_vl.sh on '$PROJECT_SOURCE'..."
chmod +x Shell_Scripts/test_unixcmds_vl.sh
Shell_Scripts/test_unixcmds_vl.sh "$PROJECT_SOURCE" || { echo "❌ Error testing files"; exit 1; }

echo "✅ Unix Commands Compilation and Execution Completed Successfully!"
echo "🔎 Compiled assembly files: '$PROJECT_SOURCE/assembly_output/'"
echo "🔎 Compiled binaries: '$PROJECT_SOURCE/assembly_output/'"
