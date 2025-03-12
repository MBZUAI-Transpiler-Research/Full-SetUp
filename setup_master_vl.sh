#!/bin/bash

echo "Starting full setup process..."

EULER_DIR="$HOME/transpiler_project/euler"

# Step 0: Install Conda if missing
if [ ! -d "$HOME/miniconda3" ]; then
    echo "Installing Conda..."
    chmod +x Shell_Scripts/getconda_vl.sh
    Shell_Scripts/getconda_vl.sh || { echo "Error installing Conda"; exit 1; }
    echo "Restart your terminal OR run: source ~/.bashrc"
    echo "Then you can run this script again, which automatically skips Step 0"
    exit 0  # Stop script execution after installing Conda
fi

# Step 1: Install system dependencies
echo "Running getdependencies_vl.sh" 
chmod +x Shell_Scripts/getdependencies_vl.sh
Shell_Scripts/getdependencies_vl.sh  || { echo "Error running getdependencies_vl.sh"; exit 1; }

# Step 2: Activate the environment
echo "Activating the Conda environment..."
source $HOME/miniconda3/bin/activate crosscompilers
echo "Environment activated successfully!"

# Step 3: Install GMP 
echo "Installing GMP if needed..."
chmod +x Shell_Scripts/install_gmp.sh
Shell_Scripts/install_gmp.sh || { echo "Error installing GMP"; exit 1; }

# Step 4: Fetch and copy Euler C files into `euler/`
mkdir -p "$EULER_DIR"

# Clone the repo if not already present
if [ ! -d "$HOME/transpiler_project/project-euler-c" ]; then
    echo "Cloning Project Euler C repository..."
    git clone https://github.com/eagletmt/project-euler-c.git "$HOME/transpiler_project/project-euler-c"
fi

# Copy all `.c` and `.txt` files from numbered subdirectories (1-9, 10-19, ...)
echo "Copying Euler C files into '$EULER_DIR'..."
find "$HOME/transpiler_project/project-euler-c" -type f \( -name "*.c" -o -name "*.txt" \) -exec cp {} "$EULER_DIR/" \;

# Cleanup: Remove the cloned repo
echo "Cleaning up Project Euler C repository..."
rm -rf "$HOME/transpiler_project/project-euler-c"

echo "Euler files copied successfully and repository removed!"

# Step 5: Compile assembly code (passing `euler/` explicitly)
echo "Running compile_assembly.sh on '$EULER_DIR'..."
chmod +x Shell_Scripts/compile_assembly_vl.sh
Shell_Scripts/compile_assembly_vl.sh "$EULER_DIR" || { echo "Error running compile_assembly.sh"; exit 1; }

# Step 6: Assemble binaries (now just pass `EULER_DIR`)
echo "Running assemble_binary.sh on '$EULER_DIR'..."
chmod +x Shell_Scripts/assemble_binary_vl.sh
Shell_Scripts/assemble_binary_vl.sh "$EULER_DIR" || { echo "Error running assemble_binary.sh"; exit 1; }

# Step 7: Verify output files
echo "Checking output files..."
assembly_files=$(find "$EULER_DIR/assembly_output" -type f -name "*.s")
binary_files=$(find "$EULER_DIR/assembly_output" -type f -name "*.out")

if [[ -z "$assembly_files" ]]; then
    echo "Error: No assembly files were generated."
    exit 1
fi

if [[ -z "$binary_files" ]]; then
    echo "Error: No binary executables were generated."
    exit 1
fi

# Step 8: Run Executables with QEMU
echo "Running qemu_execute_vl.sh on '$EULER_DIR'..."
chmod +x Shell_Scripts/qemu_execute_vl.sh
Shell_Scripts/qemu_execute_vl.sh "$EULER_DIR" || { echo "Error running qemu_execute_vl.sh"; exit 1; }

# Step 9: Create JSON files for parsed assembly data
echo "Creating JSON output for Euler problems..."
mkdir -p json_files # Ensure json_files directory exists
python parse.py "$EULER_DIR" "json_files/euler.json" || { echo "Error running parse.py"; exit 1; }

echo "JSON file created at 'json_files/euler.json'"

echo "Full setup process completed successfully!"
echo "You can find compiled assembly files in '$EULER_DIR/assembly_output/'"
echo "You can find compiled binaries in '$EULER_DIR/assembly_output/'"
echo "You can find the json file in json_files/"
echo "All executables have been run successfully with QEMU!"
sleep 3  
echo "You didn't think it was over, did you?"
sleep 3  
echo "Silly rabbit...."
sleep 3  
echo "Starting Unix Commands Compilation Setup..."

# Define project directory
PROJECT_NAME="unix_commands"
PROJECT_SOURCE="$HOME/transpiler_project/$PROJECT_NAME"

# Step 1: Clone the Unix Commands repository into a temporary directory
TEMP_DIR="$HOME/transpiler_project/unix_commands_temp"

if [ ! -d "$PROJECT_SOURCE" ]; then
    echo "Cloning Unix Commands repository into temporary directory..."
    git clone https://github.com/yadu007/Basic-Unix-Commands-Implementation.git "$TEMP_DIR" || { echo "Error cloning repository"; exit 1; }
    
    # Remove .git to avoid submodule issues
    rm -rf "$TEMP_DIR/.git"
    
    # Ensure PROJECT_SOURCE exists
    mkdir -p "$PROJECT_SOURCE"

    # Copy contents instead of moving
    cp -r "$TEMP_DIR/"* "$PROJECT_SOURCE/"

    # Remove the temporary directory after copying
    rm -rf "$TEMP_DIR"

    echo "Unix Commands copied to '$PROJECT_SOURCE'. Temp directory deleted"
else
    echo "Unix Commands repository already exists in '$PROJECT_SOURCE'."
fi

# Step 2: Prepare directories
mkdir -p "$PROJECT_SOURCE/assembly_output"

# Step 3: Add in missing headers
echo "Fixing missing headers in '$PROJECT_SOURCE'..."
chmod +x Shell_Scripts/fix_missing_headers.sh
Shell_Scripts/fix_missing_headers.sh "$PROJECT_SOURCE"

# Step 4: Compile Unix Commands into Assembly
echo "Running compile_assembly_vl.sh on '$PROJECT_SOURCE'..."
chmod +x Shell_Scripts/compile_assembly_vl.sh
Shell_Scripts/compile_assembly_vl.sh "$PROJECT_SOURCE" || { echo "Error during assembly compilation"; exit 1; }

# Step 5: Assemble Binaries
echo "Running assemble_binary_vl.sh on '$PROJECT_SOURCE'..."
chmod +x Shell_Scripts/assemble_binary_vl.sh
Shell_Scripts/assemble_binary_vl.sh "$PROJECT_SOURCE" || { echo "Error assembling binaries"; exit 1; }

# Step 6: Test Files
echo "Running test_unixcmds_vl.sh on '$PROJECT_SOURCE'..."
chmod +x Shell_Scripts/test_unixcmds_vl.sh
Shell_Scripts/test_unixcmds_vl.sh "$PROJECT_SOURCE" || { echo "Error testing files"; exit 1; }

# Step 7: Create JSON files for parsed assembly data
echo "Creating JSON output for Unix problems..."
mkdir -p json_files # Ensure json_files directory exists
python parse.py "$PROJECT_SOURCE" "json_files/unix_commands.json" || { echo "Error running parse.py"; exit 1; }

echo "Unix Commands Compilation and Execution Completed Successfully!"
echo "Compiled assembly files: '$PROJECT_SOURCE/assembly_output/'"
echo "Compiled binaries: '$PROJECT_SOURCE/assembly_output/'"
echo "You can find the json file in json_files/"
