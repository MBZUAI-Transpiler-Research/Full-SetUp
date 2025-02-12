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

# Initialize Conda and set up shell integration
echo "Initializing Conda..."
eval "$($HOME/miniconda3/bin/conda shell.bash hook)"
conda init

# Reload shell to apply Conda setup immediately
echo "Reloading shell to apply Conda setup..."
source ~/.bashrc  # or `source ~/.bash_profile` depending on your shell

# Create a Conda environment (e.g., "crosscompilers")
echo "Creating Conda environment..."
conda create -n crosscompilers python=3.9 -y

# Activate the Conda environment
echo "Activating Conda environment..."
conda activate crosscompilers 

# Install general dependencies inside Conda (using Conda wherever possible)
echo "Installing dependencies into Conda environment..."
conda install -y \
    gcc_linux-64 \
    ninja \
    cmake \
    flex \
    bison \
    wget \
    datasets \
    glob2

# Install any additional system dependencies that are not in Conda
echo "Installing additional system dependencies..."
sudo apt update
sudo apt install -y \
    vim \
    xz-utils \
    python3-pip \
    python3-virtualenv \
    python3-dev \
    python3-setuptools \
    qemu-user \
    qemu-user-static \
    gcc-aarch64-linux-gnu \
    gcc-arm-linux-gnueabi \
    gcc-riscv64-linux-gnu \
    g++-riscv64-linux-gnu \
    g++-aarch64-linux-gnu

# Confirm installation of key dependencies
echo "Verifying installed packages..."
conda list

# Notify user of completion
echo "Conda environment 'crosscompilers' is set up and dependencies are installed!"

# 01. Clone Git Repository and Enter It
git clone https://github.com/celine-lee/transpile.git "$PROJECT_NAME"
cd "$PROJECT_NAME" || { echo "Error: Failed to enter project directory"; exit 1; }

# 03. Install Python Dependencies with Pip (if needed)
echo "Installing Python dependencies with pip..."
pip install --upgrade pip  # Only if you need pip updated
pip install -r requirements.txt  # If you have packages in pip format
pip install -Ue .  # If you need to install the current package in editable mode

echo "Setup complete!"
