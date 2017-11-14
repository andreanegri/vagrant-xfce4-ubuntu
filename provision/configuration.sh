#!/bin/sh

# copy bash configuration
cp /tmp/.bashrc $HOME

# copy zsh configuration
sudo cp /tmp/.zshrc $HOME

rm /tmp/.bashrc
rm /tmp/.zshrc

# set zsh as default shell
sudo chsh -s $(which zsh)
