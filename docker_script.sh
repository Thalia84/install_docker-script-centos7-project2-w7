#!/bin/bash

#Update the existing packages
echo "updating existing packages.." 
sudo yum update -y 

#Install required packages
echo "installing required packages.."
sudo yum install -y yum -utils

#Add Docker repository
echo "adding Docker..."
sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo

#Install Docker
echo "installing Docker..."
sudo yum install -y docker-ce docker-ce-cli container.io

#Start Docker service
echo "starting Docker service..."
sudo systemctl start service

#Enable Docker to start on boot
echo "enabling Docker to start on boot..."
sudo systemctl enable docker

#Verify Docker installation
echo "verifying Docker installation"
sudo docker --version

echo "Docker installation completed successfully!"