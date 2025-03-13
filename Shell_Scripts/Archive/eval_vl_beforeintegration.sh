#!/bin/bash

# Ensure the combined C files are created before proceeding
echo "Combining C files..."
python combine_c_files.py || { echo "Error running combine_c_files.py"; exit 1; }

cd "$(dirname "$0")/eval" || { echo "Error: Failed to enter eval directory"; exit 1; }
mkdir -p assembly_output

# **Force add <string.h> for problem75/test.c before anything else**
if [ -f "problem75/test.c" ] && ! grep -q "#include <string.h>" "problem75/test.c"; then
    echo "Force adding <string.h> to problem75/test.c before processing"
    sed -i '1i #include <string.h>' "problem75/test.c"
fi

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
echo "Creating JSON output for HumanEval problems..."
python "parse.py" "$PROJECT_SOURCE" "json_files/eval.json" || { echo "Error running parse.py"; exit 1; }

echo "JSON generation complete!"
