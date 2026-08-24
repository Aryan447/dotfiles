#!/usr/bin/env bash

sudo pacman -S --noconfirm curl git zsh
sudo chsh -s "$(which zsh)"

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# to change back to bash
# chsh -s "$(which bash)"
