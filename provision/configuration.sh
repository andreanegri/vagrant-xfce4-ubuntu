#!/bin/sh

# copy bash configuration
cp /tmp/.bashrc $HOME

# copy zsh configuration
sudo cp /tmp/.zshrc $HOME

# copy terminator settings
mkdir -p $HOME/.config/terminator
cp /tmp/terminator.config $HOME/.config/terminator/config

