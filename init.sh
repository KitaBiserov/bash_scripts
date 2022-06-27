#!/bin/bash


sudo apt update && sudo apt upgrade -y
sudo apt install -y aptitude 

sudo aptitude install -y zsh

sudo zsh /usr/share/zsh/functions/Newuser/zsh-newuser-install -f
sudo aptitude install -y docker

sudo aptitude install -y \
    ca-certificates \
    curl \
    gnupg \
    lsb-release

sudo mkdir -p /etc/apt/keyrings
 curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg

echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null


sudo aptitude install -y docker-ce docker-ce-cli containerd.io docker-compose-plugin

docker login -u kitabiserov -p 

docker -v
 