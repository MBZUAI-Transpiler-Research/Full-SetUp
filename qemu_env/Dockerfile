# Use Ubuntu as the base image
FROM ubuntu:20.04

# Set noninteractive mode for smooth installations
ENV DEBIAN_FRONTEND=noninteractive

# Update system and install only the necessary dependencies
RUN apt update && apt install -y \
    vim \
    xz-utils \
    wget \
    qemu-user \
    qemu-user-static \
    gcc-aarch64-linux-gnu \
    gcc-x86-64-linux-gnu \
    gcc-riscv64-linux-gnu \
    g++-riscv64-linux-gnu \
    g++-aarch64-linux-gnu \
    g++-x86-64-linux-gnu \
    && rm -rf /var/lib/apt/lists/*

# Set working directory
WORKDIR /workspace

# If you have a script to copy, uncomment this and change name. Don't leave some_script.sh in like an idiot
# COPY some_script.sh /workspace/

# Set default command to interactive shell
CMD ["/bin/bash"]
