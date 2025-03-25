#!/bin/bash

set -e  # Exit script on error

echo "Checking if Docker is installed..."
if ! command -v docker &> /dev/null; then
    echo "Installing Docker..."
    sudo apt update
    sudo apt install -y ca-certificates curl gnupg

    echo "Adding Docker’s official GPG key..."
    sudo install -m 0755 -d /etc/apt/keyrings
    curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo tee /etc/apt/keyrings/docker.asc > /dev/null
    sudo chmod a+r /etc/apt/keyrings/docker.asc

    echo "Adding Docker repository..."
    echo \
      "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
      $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

    echo "Installing Docker packages..."
    sudo apt update
    sudo apt install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

    echo "Adding current user to the Docker group..."
    sudo usermod -aG docker $USER

    echo "Docker installed successfully! Please log out and log back in, or reboot your system."
    echo "After logging back in, run this script again to complete setup."
    exit 0  # Exit so the user can restart before continuing
else
    echo "Docker is already installed!"
fi

echo "Checking if container 'youthful_mayer' exists..."
if docker ps -a --format '{{.Names}}' | grep -q "^youthful_mayer$"; then
    echo "Container 'youthful_mayer' already exists."

    if [ "$(docker inspect -f '{{.State.Running}}' youthful_mayer)" == "true" ]; then
        echo "Container is already running."
    else
        echo "Starting existing container..."
        docker start youthful_mayer
    fi
else
    echo "Building the Docker container 'qemu_env'..."
    docker build -t qemu_env ~/transpiler_project/qemu_env

    echo "Running the container and mounting 'transpiler_project'..."
    docker run -d -v ~/transpiler_project:/workspace --name youthful_mayer qemu_env tail -f /dev/null
fi

echo "Ensuring necessary directories exist inside the container..."
docker exec youthful_mayer mkdir -p /workspace/unix_commands/true /workspace/unix_commands/pred

echo "Verifying container and directory setup..."
docker ps | grep youthful_mayer
docker exec youthful_mayer ls -l /workspace/unix_commands/

echo "Setup complete! You can now run your scripts."

