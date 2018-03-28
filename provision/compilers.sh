#!/bin/sh
sudo apt-get update
sudo DEBIAN_FRONTEND=noninteractive apt-get -y install --fix-missing \
gcc \
g++ \
gfortran \
gdb
