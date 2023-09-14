#!/bin/bash

# Update package lists and install necessary dependencies
sudo apt-get update -y && sudo apt-get install -y \
  apt-transport-https \
  ca-certificates \
  curl \
  gnupg-agent \
  software-properties-common

# Add Docker's GPG key
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

# Add Docker repository to sources
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

# Update package lists again (to include Docker repository)
sudo apt-get update -y

# Install Docker
sudo apt-get install docker-ce docker-ce-cli containerd.io -y

# Add the current user to the docker group (in this case, 'ubuntu')
sudo usermod -aG docker ubuntu

# Print a message indicating that the script has completed
echo "Docker installation complete."
