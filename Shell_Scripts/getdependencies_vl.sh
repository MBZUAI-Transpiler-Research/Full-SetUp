#!/bin/bash

# Initialize Conda and set up shell integration
echo "Initializing Conda..."
eval "$($HOME/miniconda3/bin/conda shell.bash hook)"
conda init

# Reload shell to apply Conda setup immediately
echo "Reloading shell to apply Conda setup..."
source ~/.bashrc  # or `source ~/.bash_profile` depending on your shell

# Create a Conda environment if it doesn’t exist
if ! conda env list | grep -q "crosscompilers"; then
    echo "Creating Conda environment 'crosscompilers'..."
    conda create -n crosscompilers python=3.9 -y
else
    echo "Conda environment 'crosscompilers' already exists. Skipping creation."
fi

# Activate the Conda environment
echo "Activating Conda environment..."
conda activate crosscompilers 

# Install general dependencies inside Conda (using Conda wherever possible)
echo "Installing dependencies into Conda environment..."
conda install -y -c conda-forge \
    gcc_linux-64 \
    ninja \
    cmake \
    flex \
    bison \
    wget \
    datasets \
    glob2 \
    levenshtein \
    evaluate \
    streamlit \
    scipy \
    accelerate \
    black \
    openai \
    orjson

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
    gcc-x86-64-linux-gnu \
    gcc-riscv64-linux-gnu \
    g++-riscv64-linux-gnu \
    g++-aarch64-linux-gnu \
    g++-x86-64-linux-gnu

# Confirm installation of key dependencies
echo "Verifying installed packages..."
conda list

# Notify user of completion
echo "Conda environment 'crosscompilers' is set up and dependencies are installed!"

# Install Python dependencies via pip (for those not available in Conda)
echo "Installing remaining Python dependencies..."
pip install --upgrade pip  
pip install \
    st-annotated-text \
    htbuilder \
    wandb \
    torch \
    torchvision \
    torchaudio \
    transformers \
    sacrebleu \
    peft \
    bitsandbytes

echo "Setup complete!"
