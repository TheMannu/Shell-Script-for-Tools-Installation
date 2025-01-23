#!/bin/bash

# Exit script on error
set -e

echo "Starting AWS CLI setup script..."
# Update the package index
echo "Updating package index..."
sudo apt-get update -y
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
sudo apt install unzip
unzip awscliv2.zip
sudo ./aws/install
aws configure
