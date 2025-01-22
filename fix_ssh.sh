#!/bin/bash

sudo apt update
sudo apt install -y openssh-server
sudo useradd -m user
sudo passwd -d user
sudo sed -i 's/#PasswordAuthentication yes/PasswordAuthentication no/' /etc/ssh/sshd_config
sudo sed -i 's/#PubkeyAuthentication yes/PubkeyAuthentication yes/' /etc/ssh/sshd_config
sudo systemctl restart ssh
sudo -u user ssh-keygen -t rsa -N "" -f /home/user/.ssh/id_rsa
sudo -u user cp /home/user/.ssh/id_rsa.pub /home/user/.ssh/authorized_keys
sudo chmod 700 /home/user/.ssh
sudo chmod 600 /home/user/.ssh/authorized_keys

echo "SSH server installed and configured for user 'user'"
