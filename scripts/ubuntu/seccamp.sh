#!/bin/bash -eux

# Set timezone to Asia/Tokyo
echo "Asia/Tokyo" > /etc/timezone
dpkg-reconfigure --frontend noninteractive tzdata
