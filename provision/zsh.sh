#!/bin/sh

sudo apt-get update
sudo DEBIAN_FRONTEND=noninteractive apt-get -y install zsh

#oh my zsh
sudo sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
