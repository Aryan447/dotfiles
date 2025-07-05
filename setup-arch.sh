#!/bin/bash

# Check if script is run as root
if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root"
   exit 1
fi

# Update package lists
pacman -Syu

# List of packages to install
PACKAGES=(
    nvim
    ghostty
    git
    curl
    wget
)

# Install packages
for package in "${PACKAGES[@]}"; do
    if dpkg -l | grep -qw $package; then
        echo "$package is already installed"
    else
        echo "Installing $package..."
        pacman -S -y $package
    fi
done

echo "Package installation complete!"
