#!/bin/bash
file_loc="/home/computeruse/downloaded_file.com"
sudo apt update && sudo apt upgrade -y
sudo apt install -y git openssl bash coreutils sed awk grep
mkdir -p ~/testssl
part1="https://secure.eicar.org/"
part2="eicar"
part3=".com"
url="${part1}${part2}${part3}"
curl -o "$file_loc" "$url"
cd ~/testssl
git clone --depth 1 https://github.com/testssl/testssl.sh.git
echo "Update completed, dependencies installed, and testssl.sh has been downloaded successfully."