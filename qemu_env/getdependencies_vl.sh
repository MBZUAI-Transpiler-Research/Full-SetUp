#!/bin/bash

# Ensure Miniconda is in PATH
export PATH="$HOME/miniconda3/bin:$PATH"

# Initialize Conda
echo "Initializing Conda..."
eval "$($HOME/miniconda3/bin/conda shell.bash hook)"
source $HOME/miniconda3/bin/activate

# Reload shell (but avoid issues with non-interactive mode)
echo "Reloading shell to apply Conda setup..."
source ~/.bashrc || echo "Warning: Could not source ~/.bashrc"

echo "Checking for foreign architectures..."
ARCHS=$(dpkg --print-foreign-architectures)

if echo "$ARCHS" | grep -q "i386"; then
    echo "⚠️WARNING: 32-bit architecture (i386) is enabled!"
    echo "This can cause dependency issues when installing cross-compilers."
    echo ""
    read -p "Would you like to remove i386? (y/N): " REMOVE_32BIT

    if [[ "$REMOVE_32BIT" == "y" || "$REMOVE_32BIT" == "Y" ]]; then
        echo "Removing i386 architecture..."
        sudo dpkg --remove-architecture i386

        echo "Updating package lists..."
        sudo apt update

        echo "32-bit architecture removed!"
    else
        echo "Skipping removal. Be aware that this may cause issues!"
    fi
else
    echo "No unexpected architectures detected!"
fi

# Create Conda environment if it doesn’t exist
if ! conda env list | grep -q "crosscompilers"; then
    echo "Creating Conda environment 'crosscompilers'..."
    conda create -n crosscompilers python=3.10 -y
else
    echo "Conda environment 'crosscompilers' already exists. Skipping creation."
fi

# Activate the Conda environment
echo "Activating Conda environment..."
conda activate crosscompilers || { echo "Error: Could not activate Conda environment!"; exit 1; }

# Install Conda dependencies
echo "Installing dependencies into Conda environment..."
if ! conda install -y -c conda-forge \
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
    orjson; then
    echo "Error: Some Conda packages failed to install."
    exit 1
fi

# Install system dependencies (if sudo is available)
if sudo true; then
    sudo apt update
    if ! sudo apt install -y \
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
        g++-x86-64-linux-gnu; then
        echo "Error: Some system dependencies failed to install."
        exit 1
    fi
else
    echo "Warning: sudo is not available." 
    exit 1
fi

# Check for CUDA availability
echo "Checking for CUDA-enabled GPU..."
if python -c "import torch; print(torch.cuda.is_available())" | grep -q "True"; then
    echo "CUDA detected! Installing GPU-accelerated PyTorch..."
    
    # Step 1: Install PyTorch 2.5.0
    if ! pip install --no-cache-dir torch==2.5.0 --index-url https://download.pytorch.org/whl/cu118; then
        echo "Error: PyTorch installation failed for CUDA. Debugging time!"
        exit 1
    fi
    
    # Step 2: Install TorchVision 0.20.0
    if ! pip install --no-cache-dir torchvision==0.20.0 --index-url https://download.pytorch.org/whl/cu118; then
        echo "Error: TorchVision installation failed for CUDA. Debugging time!"
        exit 1
    fi
    
    # Step 3: Install Torchaudio 2.5.0
    if ! pip install --no-cache-dir torchaudio==2.5.0 --index-url https://download.pytorch.org/whl/cu118; then
        echo "Error: Torchaudio installation failed for CUDA. Debugging time!"
        exit 1
    fi

else
    echo "No CUDA detected. Installing CPU version of PyTorch..."

    # Step 1: Install PyTorch 2.5.0
    if ! pip install --no-cache-dir torch==2.5.0 --index-url https://download.pytorch.org/whl/cpu; then
        echo "Error: PyTorch installation failed for CPU. Debugging time!"
        exit 1
    fi

    # Step 2: Install TorchVision 0.20.0
    if ! pip install --no-cache-dir torchvision==0.20.0 --index-url https://download.pytorch.org/whl/cpu; then
        echo "Error: TorchVision installation failed for CPU. Debugging time!"
        exit 1
    fi

    # Step 3: Install Torchaudio 2.5.0
    if ! pip install --no-cache-dir torchaudio==2.5.0 --index-url https://download.pytorch.org/whl/cpu; then
        echo "Error: Torchaudio installation failed for CPU. Debugging time!"
        exit 1
    fi
fi


# Install Python dependencies with pip
echo "Installing remaining Python dependencies..."
python -m pip install --upgrade pip
if ! pip install --no-cache-dir \
    st-annotated-text \
    htbuilder \
    wandb \
    transformers \
    sacrebleu \
    peft \
    bitsandbytes; then
    echo "Error: Some pip packages failed to install."
    exit 1
fi


echo "Setup complete!"
