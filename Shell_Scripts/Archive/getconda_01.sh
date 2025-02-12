#!/bin/bash


# Check if Miniconda is already installed
if [ -d "$HOME/miniconda3" ]; then
    echo "Miniconda is already installed at $HOME/miniconda3."
    read -p "Do you want to remove and reinstall Miniconda? (y/n): " CONFIRM
    if [[ "$CONFIRM" == "y" ]]; then
        echo "Removing existing Miniconda installation..."
        rm -rf $HOME/miniconda3
    else
        echo "Exiting. Miniconda installation skipped."
        exit 0
    fi
fi

# Ensure the system is up-to-date
echo "Updating package list..."
sudo apt update -y
sudo apt install -y wget

# Install Miniconda3 first (without installing other system packages yet)
echo "Installing Miniconda3..."
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
bash Miniconda3-latest-Linux-x86_64.sh -b -p $HOME/miniconda3

# Remove the Miniconda installer file now that installation is complete
echo "Removing Miniconda installer file..."
rm -f Miniconda3-latest-Linux-x86_64.sh

# Output instructions to the user to reload the shell
echo "Conda has been initialized. Please restart your shell session (close and reopen the terminal) to complete the setup."

# Exit the script here, instructing the user to proceed with the next steps manually
exit 0
