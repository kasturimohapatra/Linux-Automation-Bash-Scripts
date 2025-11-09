#!/bin/bash
# update_cleanup.sh - Script to perform system update and cleanup

echo "--------------------------------------------"
echo " Starting system update and cleanup process "
echo "--------------------------------------------"

# Update the package lists
sudo apt update -y

# Upgrade installed packages
sudo apt upgrade -y

# Remove unused packages and clean up
sudo apt autoremove -y
sudo apt autoclean -y

echo "--------------------------------------------"
echo " System update and cleanup complete! "
echo "--------------------------------------------"
