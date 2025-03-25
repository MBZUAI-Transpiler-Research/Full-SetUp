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

# Step 2: Initialize Conda (if needed) and activate the environment
echo "Activating the Conda environment..."

# Ensure Conda is properly set up
if ! command -v conda &> /dev/null; then
    echo "Conda command not found. Running conda init..."
    source "$HOME/miniconda3/bin/conda" init
    source "$HOME/.bashrc"
fi

# Ensure Conda is in PATH (needed if running inside a script)
export PATH="$HOME/miniconda3/bin:$PATH" 

# Activate the Conda environment
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

# Step 9: Create JSONL files for parsed assembly data
echo "Creating JSONL output for Euler problems..."
mkdir -p jsonl_files # Ensure jsonl_files directory exists
python parse.py "$EULER_DIR" "jsonl_files/euler.jsonl" || { echo "Error running parse.py"; exit 1; }

echo "JSONL file created at 'jsonl_files/euler.jsonl'"

echo "Full setup process completed successfully!"
echo "You can find compiled assembly files in '$EULER_DIR/assembly_output/'"
echo "You can find compiled binaries in '$EULER_DIR/assembly_output/'"
echo "You can find the jsonl file in jsonl_files/"
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

# Step 7: Create JSONL files for parsed assembly data
echo "Creating JSONL output for Unix problems..."
mkdir -p jsonl_files # Ensure jsonl_files directory exists
python parse.py "$PROJECT_SOURCE" "jsonl_files/unix_commands.jsonl" || { echo "Error running parse.py"; exit 1; }

echo "Unix Commands Compilation and Execution Completed Successfully!"
echo "Compiled assembly files: '$PROJECT_SOURCE/assembly_output/'"
echo "Compiled binaries: '$PROJECT_SOURCE/assembly_output/'"
echo "You can find the jsonl file in jsonl_files/"



echo "And now for the eval files...."
sleep 3
echo "Try not to get too excited"
sleep 3

## NOTE: these files are added manually for now, so double check them!!!

# Fix problem75/test.c before combining files
if [ -f "problem75/test.c" ] && ! grep -q "#include <string.h>" "problem75/test.c"; then
    echo "Force adding <string.h> to problem75/test.c before processing"
    sed -i '1i #include <string.h>' "problem75/test.c"
fi

# Ensure the combined C files are created before proceeding
echo "Combining C files..."
python combine_c_files.py || { echo "Error running combine_c_files.py"; exit 1; }

cd "$(dirname "$0")/eval" || { echo "Error: Failed to enter eval directory"; exit 1; }
mkdir -p assembly_output

for c_file in problem*.c; do
    if [ -f "$c_file" ]; then
        problem_name="${c_file%.c}"  # Extract "problemX"

        echo "Processing $problem_name"

        # Ensure required headers are included in the combined .c file
        if ! grep -q "#include <stdlib.h>" "$c_file" && grep -q -E "malloc|free" "$c_file"; then
            echo "Adding missing <stdlib.h> to $c_file"
            sed -i '1i #include <stdlib.h>' "$c_file"
        fi
        if ! grep -q "#include <string.h>" "$c_file" && grep -q -E "strcmp\(" "$c_file"; then
            echo "Adding missing <string.h> to $c_file"
            sed -i '1i #include <string.h>' "$c_file"
        fi
        if ! grep -q "#include <math.h>" "$c_file" && grep -q -E "ceil|floor|pow|sqrt|fabs" "$c_file"; then
            echo "Adding missing <math.h> to $c_file"
            sed -i '1i #include <math.h>' "$c_file"
        fi
        if ! grep -q "#include <stdio.h>" "$c_file" && grep -q "printf" "$c_file"; then
            echo "Adding missing <stdio.h> to $c_file"
            sed -i '1i #include <stdio.h>' "$c_file"
        fi

        # Generate normal and verbose assembly for all architectures
        riscv64-linux-gnu-gcc -S "$c_file" -o "assembly_output/${problem_name}.risc.s"
        riscv64-linux-gnu-gcc -S -fverbose-asm "$c_file" -o "assembly_output/${problem_name}.risc.verbose.s"

        aarch64-linux-gnu-gcc -S "$c_file" -o "assembly_output/${problem_name}.arm.s"
        aarch64-linux-gnu-gcc -S -fverbose-asm "$c_file" -o "assembly_output/${problem_name}.arm.verbose.s"

        x86_64-linux-gnu-gcc -S "$c_file" -o "assembly_output/${problem_name}.x86.s"
        x86_64-linux-gnu-gcc -S -fverbose-asm "$c_file" -o "assembly_output/${problem_name}.x86.verbose.s"

        # Assemble the code files into object files
        riscv64-linux-gnu-gcc -c "assembly_output/${problem_name}.risc.s" -o "assembly_output/${problem_name}.risc.o"
        aarch64-linux-gnu-gcc -c "assembly_output/${problem_name}.arm.s" -o "assembly_output/${problem_name}.arm.o"
        x86_64-linux-gnu-gcc -c "assembly_output/${problem_name}.x86.s" -o "assembly_output/${problem_name}.x86.o"

        # Check if the code uses math functions and add -lm if needed
        if grep -q -E "ceil|floor|pow|sqrt|fabs|roundf" "$c_file"; then
            echo "Detected math functions, linking with -lm"
            LINK_FLAG="-lm"
        else
            LINK_FLAG=""
        fi

        # Link object files into final executables
        riscv64-linux-gnu-gcc "assembly_output/${problem_name}.risc.o" -o "assembly_output/${problem_name}.risc" $LINK_FLAG
        aarch64-linux-gnu-gcc "assembly_output/${problem_name}.arm.o" -o "assembly_output/${problem_name}.arm" $LINK_FLAG
        x86_64-linux-gnu-gcc "assembly_output/${problem_name}.x86.o" -o "assembly_output/${problem_name}.x86" $LINK_FLAG

        # Check if linking succeeded
        if [ $? -ne 0 ]; then
            echo "Linking failed for ${problem_name}."
            continue
        fi

        # Execute the compiled binaries
        echo "Executing ${problem_name}.risc"
        qemu-riscv64 -L /usr/riscv64-linux-gnu "assembly_output/${problem_name}.risc"

        echo "Executing ${problem_name}.arm"
        qemu-aarch64 -L /usr/aarch64-linux-gnu "assembly_output/${problem_name}.arm"

        echo "Executing ${problem_name}.x86"
        qemu-x86_64 -L /usr/x86_64-linux-gnu "assembly_output/${problem_name}.x86"

        # Progress Indicator
        echo "Finished processing $problem_name"
        echo "------------------------"
    fi
done
          
# Define the project source path correctly
PROJECT_SOURCE="$HOME/transpiler_project/eval"

# Move back to the transpiler_project directory
cd .. # This ensures we are in /home/alex-pretko/transpiler_project

# Run the parsing script from the correct location
echo "Creating JSONL output for HumanEval problems with test.c and code.c combined..."
python "parse.py" "$PROJECT_SOURCE" "jsonl_files/eval_combined.jsonl" || { echo "Error running parse.py"; exit 1; }

echo "Combined JSONL generation complete!"
echo "Moving combined JSONL to assembly_output_combined! Deleting the combined c files as well!"

mkdir -p eval/assembly_output_combined
mv eval/assembly_output/* eval/assembly_output_combined/
rm -rf eval/assembly_output
# rm -f eval/*.c

echo "Moving all combined C files to c_combined..."
mkdir -p eval/c_combined
mv eval/*.c eval/c_combined/
echo "Move complete!"

sleep 3
echo "And now for the standalone c files...."
sleep 3
echo "Starting compilation process of Standalone code.c files..."

# Step 1: Create necessary directories
mkdir -p eval/assembly_output
mkdir -p eval/qemu_test_output

# Step 2: Ensure required headers are included in code.c
for dir in eval/*/; do
    if [ -f "$dir/code.c" ]; then
        echo "Checking and adding missing headers in $dir/code.c..."

        if ! grep -q "#include <stdlib.h>" "$dir/code.c" && grep -q -E "malloc|free" "$dir/code.c"; then
            echo "Adding missing <stdlib.h> to $dir/code.c"
            sed -i '1i #include <stdlib.h>' "$dir/code.c"
        fi
        if ! grep -q "#include <string.h>" "$dir/code.c" && grep -q -E "strcmp\(" "$dir/code.c"; then
            echo "Adding missing <string.h> to $dir/code.c"
            sed -i '1i #include <string.h>' "$dir/code.c"
        fi
        if ! grep -q "#include <math.h>" "$dir/code.c" && grep -q -E "ceil|floor|pow|sqrt|fabs|roundf|round" "$dir/code.c"; then
            echo "Adding missing <math.h> to $dir/code.c"
            sed -i '1i #include <math.h>' "$dir/code.c"
        fi
        if ! grep -q "#include <stdio.h>" "$dir/code.c" && grep -q "printf" "$dir/code.c"; then
            echo "Adding missing <stdio.h> to $dir/code.c"
            sed -i '1i #include <stdio.h>' "$dir/code.c"
        fi
    fi
done

# Step 3: Compile code.c into object files and full executables
for dir in eval/*/; do
    if [ -f "$dir/code.c" ]; then
        problem_name=$(basename "$dir")

        echo "Compiling code.c for $problem_name..."

        # Generate assembly files
        riscv64-linux-gnu-gcc -S "$dir/code.c" -o "eval/assembly_output/${problem_name}.risc.s"
        riscv64-linux-gnu-gcc -S -fverbose-asm "$dir/code.c" -o "eval/assembly_output/${problem_name}.risc.verbose.s"

        aarch64-linux-gnu-gcc -S "$dir/code.c" -o "eval/assembly_output/${problem_name}.arm.s"
        aarch64-linux-gnu-gcc -S -fverbose-asm "$dir/code.c" -o "eval/assembly_output/${problem_name}.arm.verbose.s"

        x86_64-linux-gnu-gcc -S "$dir/code.c" -o "eval/assembly_output/${problem_name}.x86.s"
        x86_64-linux-gnu-gcc -S -fverbose-asm "$dir/code.c" -o "eval/assembly_output/${problem_name}.x86.verbose.s"

        # Compile into object files
        riscv64-linux-gnu-gcc -c "$dir/code.c" -o "eval/assembly_output/${problem_name}.risc.o"
        aarch64-linux-gnu-gcc -c "$dir/code.c" -o "eval/assembly_output/${problem_name}.arm.o"
        x86_64-linux-gnu-gcc -c "$dir/code.c" -o "eval/assembly_output/${problem_name}.x86.o"
    fi
done

echo "Code.c compilation complete!"

# Step 4: Ensure required headers are included in test.c
for dir in eval/*/; do
    if [ -f "$dir/test.c" ]; then
        echo "Checking and adding missing headers in $dir/test.c..."

        if ! grep -q "#include <stdlib.h>" "$dir/test.c" && grep -q -E "malloc|free" "$dir/test.c"; then
            echo "Adding missing <stdlib.h> to $dir/test.c"
            sed -i '1i #include <stdlib.h>' "$dir/test.c"
        fi
        if ! grep -q "#include <string.h>" "$dir/test.c" && grep -q -E "strcmp\(" "$dir/test.c"; then
            echo "Adding missing <string.h> to $dir/test.c"
            sed -i '1i #include <string.h>' "$dir/test.c"
        fi
        if ! grep -q "#include <math.h>" "$dir/test.c" && grep -q -E "ceil|floor|pow|sqrt|fabs|roundf|round" "$dir/test.c"; then
            echo "Adding missing <math.h> to $dir/test.c"
            sed -i '1i #include <math.h>' "$dir/test.c"
        fi
        if ! grep -q "#include <stdio.h>" "$dir/test.c" && grep -q "printf" "$dir/test.c"; then
            echo "Adding missing <stdio.h> to $dir/test.c"
            sed -i '1i #include <stdio.h>' "$dir/test.c"
        fi
    fi
done

# Step 5: Compile and link test.c with code.o for QEMU execution
for dir in eval/*/; do
    if [ -f "$dir/test.c" ] && [ -f "$dir/code.c" ]; then
        problem_name=$(basename "$dir")

        echo "Compiling and linking test.c for $problem_name..."

        # Check if math functions are used in either file
        if grep -q -E "ceil|floor|pow|sqrt|fabs|roundf|round" "$dir/code.c" || grep -q -E "ceil|floor|pow|sqrt|fabs|roundf|round" "$dir/test.c"; then
            LINK_FLAG="-lm"
        else
            LINK_FLAG=""
        fi

        # Link test.c with code.o and include -lm if needed
        riscv64-linux-gnu-gcc "$dir/test.c" "eval/assembly_output/${problem_name}.risc.o" -o "eval/qemu_test_output/${problem_name}.risc" $LINK_FLAG
        aarch64-linux-gnu-gcc "$dir/test.c" "eval/assembly_output/${problem_name}.arm.o" -o "eval/qemu_test_output/${problem_name}.arm" $LINK_FLAG
        x86_64-linux-gnu-gcc "$dir/test.c" "eval/assembly_output/${problem_name}.x86.o" -o "eval/qemu_test_output/${problem_name}.x86" $LINK_FLAG
    fi
done

echo "Test.c compilation and linking complete!"

# Step 6: Run QEMU to verify execution
for test_executable in eval/qemu_test_output/*; do
    problem_name=$(basename "$test_executable")

    echo "Executing ${problem_name} with QEMU..."

    if [[ "$problem_name" == *.risc ]]; then
        qemu-riscv64 -L /usr/riscv64-linux-gnu "$test_executable"
    elif [[ "$problem_name" == *.arm ]]; then
        qemu-aarch64 -L /usr/aarch64-linux-gnu "$test_executable"
    elif [[ "$problem_name" == *.x86 ]]; then
        qemu-x86_64 -L /usr/x86_64-linux-gnu "$test_executable"
    fi

    echo "Execution complete for $problem_name."
done

echo "Copying standalone code.c files to eval/"

for dir in eval/*/; do
    if [ -f "$dir/code.c" ]; then
        problem_name=$(basename "$dir")  # Extract problemX
        cp "$dir/code.c" "eval/${problem_name}.c"
    fi
done

echo "Copy complete!"

# Define the project source path correctly
PROJECT_SOURCE="$HOME/transpiler_project/eval"

# Run the parsing script from the correct location
echo "Creating JSONL output for HumanEval problems with only code.c..."
python "parse.py" "$PROJECT_SOURCE" "jsonl_files/eval_standalone.jsonl" || { echo "Error running parse.py"; exit 1; }

echo "Standalone JSONL generation complete!"
echo "Removing the copied code.c files..."
rm -f eval/*.c
echo "Copied code.c files removed!"

# Step 7: Delete compiled test.c executables
echo "Cleaning up test.c compiled executables and moving assembly files into assembly_output_standalone..."
rm -rf eval/qemu_test_output
mkdir -p eval/assembly_output_standalone/
mv eval/assembly_output/* eval/assembly_output_standalone/
rm -rf eval/assembly_output

echo "Now getting rid of old files and folders"
#rm -rf euler unix_commands

sleep 3
echo ""
echo "Cleanup complete! A winner is you."
