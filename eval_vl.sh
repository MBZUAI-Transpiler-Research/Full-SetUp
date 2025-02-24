#!/bin/bash

# Ensure the combined C files are created before proceeding
echo "Combining C files..."
python combine_c_files.py || { echo "❌ Error running combine_c_files.py"; exit 1; }

cd "$(dirname "$0")/eval" || { echo "❌ Error: Failed to enter eval directory"; exit 1; }
mkdir -p assembly_output

# **Force add <string.h> for problem75/test.c before anything else**
if [ -f "problem75/test.c" ]; then
    echo "🔹 Force adding <string.h> to problem75/test.c before processing"
    sed -i '1i #include <string.h>' "problem75/test.c"
fi

for problem_dir in problem*; do
    if [ -d "$problem_dir" ]; then
        echo "Processing $problem_dir"
        
        cd "$problem_dir"

        FILE="code"
        TEST_FILE="test"

        # Ensure required headers are included in code.c and test.c
        for SRC in ${FILE}.c ${TEST_FILE}.c; do
            if [ -f "$SRC" ]; then
                # Check for missing headers and add them if necessary
                if ! grep -q "#include <stdlib.h>" "$SRC" && grep -q -E "malloc|free" "$SRC"; then
                    echo "🔹 Adding missing <stdlib.h> to $SRC"
                    sed -i '1i #include <stdlib.h>' "$SRC"
                fi
                if ! grep -q "#include <string.h>" "$SRC" && grep -q -E "strcmp\(" "$SRC"; then
                    echo "🔹 Adding missing <string.h> to $SRC"
                    sed -i '1i #include <string.h>' "$SRC"
                fi
                if ! grep -q "#include <math.h>" "$SRC" && grep -q -E "ceil|floor|pow|sqrt|fabs" "$SRC"; then
                    echo "🔹 Adding missing <math.h> to $SRC"
                    sed -i '1i #include <math.h>' "$SRC"
                fi
                if ! grep -q "#include <stdio.h>" "$SRC" && grep -q "printf" "$SRC"; then
                    echo "🔹 Adding missing <stdio.h> to $SRC"
                    sed -i '1i #include <stdio.h>' "$SRC"
                fi
            fi
        done

        # **Compile for RISC-V & ARM (Assembly)**
        echo "🔹 Compiling assembly for RISC-V and ARM..."

        riscv64-linux-gnu-gcc -S ${FILE}.c -o ${FILE}.risc.s -O0
        riscv64-linux-gnu-gcc -S -fverbose-asm ${FILE}.c -o ${FILE}.risc.verbose.s -O0
        aarch64-linux-gnu-gcc -S ${FILE}.c -o ${FILE}.arm.s -O0
        aarch64-linux-gnu-gcc -S -fverbose-asm ${FILE}.c -o ${FILE}.arm.verbose.s -O0

        # Assemble the code file into an object
        riscv64-linux-gnu-gcc -c ${FILE}.risc.s -o ${FILE}.risc.o
        aarch64-linux-gnu-gcc -c ${FILE}.arm.s -o ${FILE}.arm.o
        
        # Compile the test file to an object file
        riscv64-linux-gnu-gcc -c ${TEST_FILE}.c -o ${TEST_FILE}.risc.o
        aarch64-linux-gnu-gcc -c ${TEST_FILE}.c -o ${TEST_FILE}.arm.o
        
        # Check if the code uses math functions and add -lm if needed
        if grep -q -E "ceil|floor|pow|sqrt|fabs|roundf" ${FILE}.c; then
            echo "ℹ️ Detected math functions, linking with -lm"
            LINK_FLAG="-lm"
        else
            LINK_FLAG=""
        fi

        # Link both object files into a final executable, including main from the test file
        riscv64-linux-gnu-gcc ${FILE}.risc.o ${TEST_FILE}.risc.o -o ${FILE}.risc $LINK_FLAG
        aarch64-linux-gnu-gcc ${FILE}.arm.o ${TEST_FILE}.arm.o -o ${FILE}.arm $LINK_FLAG

        # Check if linking succeeded, if not, report error
        if [ $? -ne 0 ]; then
            echo "❌ Linking failed in ${problem_dir}."
            cd ..
            continue
        fi

        echo "Executing ${FILE}.risc in ${problem_dir}"
        qemu-riscv64 -L /usr/riscv64-linux-gnu ${FILE}.risc

        echo "Executing ${FILE}.arm in ${problem_dir}"
        qemu-aarch64 -L /usr/aarch64-linux-gnu ${FILE}.arm
        
        # Rename compiled files to prevent overwriting
        problem_name="${problem_dir}"  # Extract problem name (e.g., problem1, problem2)

        mv code.risc.s "${problem_name}.code.risc.s"
        mv code.risc.verbose.s "${problem_name}.code.risc.verbose.s"
        mv code.arm.s "${problem_name}.code.arm.s"
        mv code.arm.verbose.s "${problem_name}.code.arm.verbose.s"
        mv code.risc.o "${problem_name}.code.risc.o"
        mv code.arm.o "${problem_name}.code.arm.o"
        mv test.risc.o "${problem_name}.test.risc.o"
        mv test.arm.o "${problem_name}.test.arm.o"
        mv code.risc "${problem_name}.code.risc"
        mv code.arm "${problem_name}.code.arm"
        
        # Move renamed files to assembly_output
        echo "📂 Moving compiled files for $problem_dir to assembly_output..."
        mv "${problem_name}.code.risc.s" "${problem_name}.code.risc.verbose.s" \
           "${problem_name}.code.arm.s" "${problem_name}.code.arm.verbose.s" \
           "${problem_name}.code.risc.o" "${problem_name}.code.arm.o" \
           "${problem_name}.test.risc.o" "${problem_name}.test.arm.o" \
           "${problem_name}.code.risc" "${problem_name}.code.arm" ../assembly_output 2>/dev/null

        
        cd ..

        echo "Finished processing $problem_dir"
        echo "------------------------"
    fi
done

# Define the project source path correctly
PROJECT_SOURCE="$HOME/transpiler_project/eval"

# Move back to the transpiler_project directory
cd .. # This ensures we are in /home/alex-pretko/transpiler_project

# DEBUG: Print current directory and check if parse.py exists
pwd
ls -l parse.py

# Run the parsing script from the correct location
echo "📝 Creating JSON output for HumanEval problems..."
python "parse.py" "$PROJECT_SOURCE" "json_files/eval.json" || { echo "❌ Error running parse.py"; exit 1; }

echo "✅ JSON generation complete!"
