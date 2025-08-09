#!/bin/bash
# Samm's Arch Linux dotfiles installer
# See LICENSE.txt file

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

