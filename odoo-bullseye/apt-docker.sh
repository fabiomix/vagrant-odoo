#!/bin/bash
echo "deb [arch=amd64] https://download.docker.com/linux/debian $(lsb_release -cs) stable" > /etc/apt/sources.list.d/docker.list
curl -fsSL https://download.docker.com/linux/debian/gpg | gpg --dearmor -o /etc/apt/trusted.gpg.d/docker.gpg
apt-get update
apt-get install -y containerd.io docker-ce docker-ce-cli docker-compose-plugin
usermod -aG docker vagrant
