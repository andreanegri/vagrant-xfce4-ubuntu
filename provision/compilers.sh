#!/bin/sh
sudo apt-get update
sudo DEBIAN_FRONTEND=noninteractive apt-get -y install \
build-essential \
gcc-4.9 \
g++-4.9

sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-4.9 10
sudo update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-4.9 10
sudo update-alternatives --install /usr/bin/cc cc /usr/bin/gcc-4.9 10
sudo update-alternatives --install /usr/bin/c++ c++ /usr/bin/g++-4.9 10