#!/bin/bash
sudo pacman -Syu --needed base-devel git -y

git clone https://aur.archlinux.org/paru.git

cd paru

makepkg -si
