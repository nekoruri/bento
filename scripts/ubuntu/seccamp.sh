#!/bin/bash -eux

# Set timezone to Asia/Tokyo
echo "Asia/Tokyo" > /etc/timezone
dpkg-reconfigure --frontend noninteractive tzdata

# Install Docker
apt-get install wget
wget -qO- https://get.docker.com/ | /bin/sh

usermod -aG docker vagrant

docker pull ubuntu:latest
docker pull centos:latest
docker pull rails:latest
docker pull mysql:latest

# Install Vim
apt-get -y install vim
