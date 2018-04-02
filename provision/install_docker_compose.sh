#!/bin/bash
echo "=== INSTALLING DOCKER COMPOSE ==="
echo "Fetching binary file..."
sudo curl -L https://github.com/docker/compose/releases/download/1.18.0/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
echo "Adding run permission..."
sudo chmod +x /usr/local/bin/docker-compose
docker-compose --version
echo "=== DOCKER COMPOSE INSTALLED ==="
