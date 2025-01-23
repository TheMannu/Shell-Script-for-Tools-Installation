#!/bin/bash

# Exit script on error
set -e

echo "Starting AWS CLI setup script..."
# Update the package index
echo "Updating package index..."
sudo apt-get update -y

# Ensure necessary tools are installed
echo "Installing required packages..."
sudo apt-get install -y unzip curl

# Remove older AWS CLI installations
echo "Removing old AWS CLI installations if they exist..."
sudo apt-get remove -y awscli || true
sudo snap remove aws-cli || true

# Download AWS CLI v2 installation package
echo "Downloading AWS CLI v2..."
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"

# Unzip the installation package
echo "Extracting AWS CLI installation files..."
unzip awscliv2.zip

curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
sudo apt install unzip
unzip awscliv2.zip
sudo ./aws/install
aws configure
