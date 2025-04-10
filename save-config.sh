#!/bin/bash
# Script to save buildroot config
# Author: Matt Hartnett

# Exit on error
set -e

source shared.sh

# Ensure we're in the buildroot directory
cd "$(dirname "$0")/buildroot"

# Optional: check if .config exists
if [ ! -f .config ]; then
    echo "Error: .config not found in ./buildroot"
    exit 1
fi

# Save current config as minimal defconfig
make savedefconfig BR2_DEFCONFIG=$DEFCONFIG_PATH

echo "Saved defconfig to $DEFCONFIG_PATH"
