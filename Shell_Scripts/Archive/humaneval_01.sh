#!/bin/bash

# Define source directory (eval/) and target directory (eval/extracted_c_files/)
SOURCE_DIR="../eval"
OUTPUT_DIR="../eval/extracted_c_files"

# Ensure the output directory exists
mkdir -p "$OUTPUT_DIR"

# Iterate over all problem directories inside eval/
for problem_dir in "$SOURCE_DIR"/problem*; do
    if [ -d "$problem_dir" ]; then
        CODE_FILE="$problem_dir/code.c"

        # Check if code.c exists inside the problem directory
        if [ -f "$CODE_FILE" ]; then
            # Extract the problem name from the directory name
            PROBLEM_NAME=$(basename "$problem_dir")

            # Rename and copy to extracted_c_files/
            NEW_NAME="eval_${PROBLEM_NAME}.c"
            cp "$CODE_FILE" "$OUTPUT_DIR/$NEW_NAME"
            echo "✅ Copied: $problem_dir/code.c → $OUTPUT_DIR/$NEW_NAME"
        else
            echo "⚠️ Warning: No code.c found in $problem_dir"
        fi
    fi
done

echo "🎯 Extraction complete! All C files are now in $OUTPUT_DIR"

