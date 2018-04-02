#!/bin/bash
# Specific for Vagrant 

echo "Creating path /var/appdata/mongodb..."
sudo mkdir -p /var/appdata/mongodb
sudo chown -R 1000:1000 /var/appdata/mongodb

echo "Creating path /var/appdata/mysql..."
sudo mkdir -p /var/appdata/mysql
sudo chown -R 1000:1000 /var/appdata/mysql

echo "Creating path /var/appdata/nginx..."
sudo mkdir -p /var/appdata/nginx
sudo chown -R 1000:1000 /var/appdata/nginx

echo "Creating path /var/appdata/nodejs..."
sudo mkdir -p /var/appdata/nodejs
sudo chown -R 1000:1000 /var/appdata/nodejs

echo "Creating path /var/appdata/redis..."
sudo mkdir -p /var/appdata/redis
sudo chown -R 1000:1000 /var/appdata/redis
