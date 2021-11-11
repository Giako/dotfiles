#!/bin/sh
USERNAME=$(whoami)
export USERNAME
export DEBIAN_FRONTEND=noninteractive

sudo apt-get update
sudo apt-get install -y \
    zsh \
    zsh-antigen

ZSH_PATH=$(which zsh)
export ZSH_PATH

if [ "$ZSH_PATH" != "$SHELL" ]
then
    chsh -s "$ZSH_PATH" "$USERNAME"
fi

