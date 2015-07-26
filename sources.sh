#!/usr/bin/env bash
sudo cat /dev/null > /etc/apt/sources.list
echo "deb http://archive.ubuntu.com/ubuntu/ trusty main restricted universe multiverse" >> /etc/apt/sources.list

echo "deb http://archive.ubuntu.com/ubuntu/ trusty-updates main restricted universe multiverse" >> /etc/apt/sources.list

echo "deb http://archive.ubuntu.com/ubuntu/ trusty-backports main restricted universe multiverse" >> /etc/apt/sources.list

echo "deb http://security.ubuntu.com/ubuntu trusty-security main restricted universe multiverse" >> /etc/apt/sources.list

echo "deb http://archive.canonical.com/ubuntu trusty partner" >> /etc/apt/sources.list

echo "deb http://extras.ubuntu.com/ubuntu trusty main" >> /etc/apt/sources.list

sudo cat /etc/apt/sources.list
sudo apt-get update
