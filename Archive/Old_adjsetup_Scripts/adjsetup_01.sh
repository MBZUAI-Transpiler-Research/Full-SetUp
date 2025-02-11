#!/bin/bash

# Check if project name is provided
if [ -z "$1" ]; then
    echo "Usage: $0 <project_name>"
    exit 1
fi

PROJECT_NAME=$1

# Check if the directory already exists
if [ -d "$PROJECT_NAME" ]; then
    echo "The directory '$PROJECT_NAME' already exists."
    read -p "Do you want to overwrite it? (y/n): " CONFIRM
    if [[ "$CONFIRM" != "y" ]]; then
        echo "Exiting. Please choose a different project name."
        exit 1
    fi
    rm -rf "$PROJECT_NAME"
fi

# Define RISC-V Docker image/container names
DOCKER_IMAGE_RISCV="verification_image"
DOCKER_CONTAINER_RISCV="${PROJECT_NAME}_riscv_container"

# Define ARM Docker image/container names
DOCKER_IMAGE_ARM="${PROJECT_NAME}_arm"
DOCKER_CONTAINER_ARM="${PROJECT_NAME}_arm_container"

# 01. Create and Activate Virtual Environment
python3 -m venv venv
source venv/bin/activate

# 02. Clone Git Repository and Enter It
git clone https://github.com/celine-lee/transpile.git "$PROJECT_NAME"
cd "$PROJECT_NAME" || { echo "Error: Failed to enter project directory"; exit 1; }

# 03. Install Python Dependencies
pip install --upgrade pip
pip install -r requirements.txt
pip install -Ue .

# 6. Unzip RISC-V Verification Image (only if missing)
echo "Checking for verification_image directory..."

if [ -d "verification_image" ]; then
    echo "Verification image directory already exists. Skipping extraction."
else
    echo "Extracting verification image..."
    unzip -q verification_image.zip
    if [ $? -ne 0 ] || [ ! -d "verification_image" ]; then
        echo "Error: Failed to unzip verification image or directory does not exist."
        exit 1
    fi
    echo "Verification image extracted successfully."
fi

# Move into verification_image directory
cd verification_image || { 
    echo "Error: Failed to enter verification_image directory"; 
    ls -l; 
    exit 1; 
}

# 07. Check if verification image has already been built
if [ -f "build_complete.marker" ]; then  # Replace with actual expected build output
    echo "Verification image appears to be already built."
    read -p "Do you want to rebuild it? (y/n): " REBUILD_CHOICE
    if [[ "$REBUILD_CHOICE" != "y" ]]; then
        echo "Skipping verification image build."
    else
        rm -f "build_complete.marker"  # Remove marker to allow rebuild
        echo "Building verification image..."
        bash build.sh
        if [ $? -ne 0 ]; then
            echo "Error: Failed to build verification image"
            exit 1
        fi
        echo "Verification image built successfully."
        touch build_complete.marker  # Mark the build as complete
    fi
else
    echo "Building verification image..."
    bash build.sh
    if [ $? -ne 0 ]; then
        echo "Error: Failed to build verification image"
        exit 1
    fi
    echo "Verification image built successfully."
    touch build_complete.marker  # Mark the build as complete
fi


# 8. Build the RISC-V Docker Image
echo "Building RISC-V Docker image..."
docker rmi -f "$DOCKER_IMAGE_RISCV" &>/dev/null
docker build -t "$DOCKER_IMAGE_RISCV" .
if [ $? -ne 0 ]; then
    echo "Error: Failed to build Docker image $DOCKER_IMAGE_RISCV"
    exit 1
fi
echo "RISC-V Docker image $DOCKER_IMAGE_RISCV built successfully."


# 9. Run the RISC-V Container and Compile the C program
echo "Running RISC-V container and compiling the C program..."

docker rm -f "$DOCKER_CONTAINER_RISCV" &>/dev/null

docker run --name "$DOCKER_CONTAINER_RISCV" -it verification_image bash -c "
    echo 'Downloading C program...';
    wget -q https://raw.githubusercontent.com/celine-lee/transpile/refs/heads/main/data/project-euler-c/original_c/problem12.c;
    if [ \$? -ne 0 ]; then
        echo 'Error: Failed to download C program inside container.';
        exit 1;
    fi;
    echo 'C program downloaded.';

    echo 'Compiling C program...';
    riscv64-unknown-linux-gnu-gcc -S problem12.c -o problem12.s;
    riscv64-unknown-linux-gnu-gcc problem12.c -o problem12;
    if [ \$? -ne 0 ]; then
        echo 'Error: Compilation failed.';
        exit 1;
    fi;

    ls;
    echo 'C program compiled successfully.';

    echo 'Running compiled program using QEMU...';
    qemu-riscv64 ./problem12;
    if [ \$? -ne 0 ]; then
        echo 'Error: Execution failed.';
        exit 1;
    fi;

    echo 'Execution complete.';
"

if [ $? -ne 0 ]; then
    echo "Error: Failed to start container $DOCKER_CONTAINER_RISCV."
    exit 1
fi

echo "RISC-V program executed successfully."

echo "Stopping and committing the RISC-V container..."
docker stop "$DOCKER_CONTAINER_RISCV" &>/dev/null
docker commit "$DOCKER_CONTAINER_RISCV" verification_image:latest &>/dev/null
docker rm "$DOCKER_CONTAINER_RISCV" &>/dev/null
echo "RISC-V container stopped and removed."


# 10. Build the ARM Docker Image
echo "Building ARM Docker image..."
docker rmi -f "$DOCKER_IMAGE_ARM" &>/dev/null
docker build -t "$DOCKER_IMAGE_ARM" -<<EOF
FROM ubuntu:22.04
ENV DEBIAN_FRONTEND=noninteractive
WORKDIR /workspace
EOF

if [ $? -ne 0 ]; then
    echo "Error: Failed to build Docker image $DOCKER_IMAGE_ARM"
    exit 1
fi
echo "ARM Docker image $DOCKER_IMAGE_ARM built successfully."


# 11. Run the ARM Container and Compile the C program
echo "Running ARM container and compiling the C program..."

docker rm -f "$DOCKER_CONTAINER_ARM" &>/dev/null

docker run --name "$DOCKER_CONTAINER_ARM" \
    -v /usr/bin/qemu-aarch64:/usr/bin/qemu-aarch64 \
    -v /usr/aarch64-linux-gnu:/usr/aarch64-linux-gnu \
    -it "$DOCKER_IMAGE_ARM" bash -c "
    
    echo 'Downloading C program...';
    wget -q https://raw.githubusercontent.com/celine-lee/transpile/refs/heads/main/data/project-euler-c/original_c/problem12.c;
    if [ \$? -ne 0 ]; then
        echo 'Error: Failed to download C program inside container.';
        exit 1;
    fi;
    echo 'C program downloaded.';

    echo 'Compiling C program for ARM...';
    aarch64-linux-gnu-gcc -S problem12.c -o problem12.s;
    aarch64-linux-gnu-gcc problem12.c -o problem12;
    if [ \$? -ne 0 ]; then
        echo 'Error: Compilation failed.';
        exit 1;
    fi;
    
    ls;
    echo 'C program compiled successfully.';

    echo 'Running compiled ARM program using QEMU...';
    qemu-aarch64 -L /usr/aarch64-linux-gnu problem12;  # ✅ Uses system QEMU

    if [ \$? -ne 0 ]; then
        echo 'Error: Execution failed.';
        exit 1;
    fi;
    echo 'Execution complete.';
"

if [ $? -ne 0 ]; then
    echo "Error: Failed to start ARM container $DOCKER_CONTAINER_ARM."
    exit 1
fi

echo "ARM program executed successfully."

# Stop and save ARM container
echo "Stopping and committing the ARM container..."
docker stop "$DOCKER_CONTAINER_ARM" &>/dev/null
docker commit "$DOCKER_CONTAINER_ARM" "$DOCKER_IMAGE_ARM":latest &>/dev/null
docker rm "$DOCKER_CONTAINER_ARM" &>/dev/null
echo "ARM container stopped and removed."

echo "Setup complete for both RISC-V and ARM."








