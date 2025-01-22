#!/bin/bash
sudo apt update && sudo apt upgrade -y
sudo apt install -y git openssl bash coreutils sed awk grep
mkdir -p ~/testssl
cd ~/testssl
git clone --depth 1 https://github.com/testssl/testssl.sh.git
echo "Update completed, dependencies installed, and testssl.sh has been downloaded successfully."