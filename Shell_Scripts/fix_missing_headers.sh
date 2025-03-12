#!/bin/bash

set -e  # Exit on error

# Ensure an argument is provided
if [ -z "$1" ]; then
    echo "Error: No source folder provided."
    echo "Usage: $0 <source_folder>"
    exit 1
fi

SOURCE_FOLDER="$1"

echo "Checking for missing headers in C files..."

# Function to check if a header is present
check_header() {
    local file="$1"
    local header="$2"
    grep -q "#include <$header>" "$file"
}

# Function to add header if missing
add_header() {
    local file="$1"
    local header="$2"
    echo "Adding #include <$header> to $file"
    sed -i "1i #include <$header>" "$file"
}

# Loop through all .c files in the directory
for file in "$SOURCE_FOLDER"/*.c; do
    echo "Checking $file..."

    # Check and add missing headers for read(), write(), and close()
    if grep -qE '\b(read|write|close)\b' "$file"; then
        if ! check_header "$file" "unistd.h"; then
            add_header "$file" "unistd.h"
        fi
    fi

    # Check and add missing headers for execvp()
    if grep -q '\bexecvp\b' "$file"; then
        if ! check_header "$file" "unistd.h"; then
            add_header "$file" "unistd.h"
        fi
    fi

    # Check and add missing headers for utime()
    if grep -q '\butime\b' "$file"; then
        if ! check_header "$file" "utime.h"; then
            add_header "$file" "utime.h"
        fi
    fi
    
    if grep -q "void main" "$file"; then
        echo "Fixing 'void main' -> 'int main' in $file"
        sed -i 's/\bvoid main\b/int main/g' "$file"
    fi
done

echo "Header fixes complete!"
