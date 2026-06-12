#!/bin/bash
set -e

echo "Setting up environment for MongoDB in Docker..."

# Install pymongo for the acceptance test
pip install pymongo --quiet

# Prepare Docker configuration
sudo mkdir -p /etc/docker
sudo cp daemon.json /etc/docker/daemon.json

# Restart Docker to apply changes
echo "Restarting Docker daemon..."
sudo systemctl stop docker.socket || true
sudo systemctl stop docker.service || true
sudo pkill dockerd || true
sudo pkill containerd || true
sleep 2
sudo systemctl start docker.service

echo "Setup complete."
