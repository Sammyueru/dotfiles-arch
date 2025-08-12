#!/bin/bash
# Samm's Arch Linux dotfiles installer
# Copyright (c) 2025, Samm. See LICENSE.txt file

echo "Samm's Arch Linux dotfiles installer."
echo "Copyright (c) 2025, Samm. See LICENSE.txt file."

if [ -f "/etc/arch-release" ]; then
    echo "Detected arch-based system."
    echo "Continuing..."
else
    echo "Arch-based system not detected."
    echo "It is not recommended to continue unless you are on an arch-based system."
    read -r -p "Continue? (y/n): " should_continue
    case $should_continue in
        y|Y)
            echo "Continuing..."
            ;;
        n|N)
            echo "Exiting."
            exit 0
            ;;
        *)
            echo "Invalid input."
            echo "Exiting."
            exit 0
            ;;
    esac

fi

echo "Updating system packages..."
sudo pacman -Syu --noconfirm

sudo pacman -S yay --noconfirm

echo "Checking if Python 3 is installed."
if command -v python3 &> /dev/null then
    echo "Python 3 not installed."
    echo "Installing..."
    sudo pacman -S python3 --noconfirm
    echo "Installed Python 3."
else
    echo "Python 3 is installed."
fi

echo "Checking if pip is installed."
if ! command -v pip &> /dev/null then
    echo "pip not installed."
    echo "Installing..."
    sudo pacman -S --noconfirm python-pip
else
    echo "pip is installed."
fi

echo "Initializing git submodules."
git submodule update --init --recursive

sudo python3 ./build.py
