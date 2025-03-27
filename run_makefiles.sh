#!/bin/bash

# Navigate to the bringup_bench directory
cd bringup_bench || { echo "Error: bringup_bench directory not found"; exit 1; }

# Loop through all subdirectories
for dir in */ ; do
    if [ -f "$dir/Makefile" ]; then
        echo "Running make in $dir"
        (cd "$dir" && make TARGET=host clean build test)
    else
        echo "Skipping $dir (No Makefile found)"
    fi
done


