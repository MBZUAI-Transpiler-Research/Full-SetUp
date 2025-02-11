#!/bin/bash

echo "Updating package list..."
sudo apt update -y

echo "Installing required packages..."
sudo apt install -y \
    git \
    curl \
    unzip \
    python3 \
    python3-venv \
    python3-pip \
    docker.io \
    gcc \
    build-essential \
    ninja-build \
    libglib2.0-dev \
    libpixman-1-dev \
    flex \
    bison \
    xz-utils \
    wget \
    qemu-user-static \ 
    vim \
    qemu-user  # ✅ Added this line to install QEMU

echo "All dependencies installed successfully."
