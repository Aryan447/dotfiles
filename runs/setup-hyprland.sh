#!/bin/bash

sudo pacman -Syu hyprland hyprpaper hyprlock hyprshot rofi-wayland nautilus eog hyprpolkitagen swww --noconfirm --needed

paru -Syu hyprnotify wlogout wshowkeys-mao-git overskride --noconfirm --needed

sudo pacman -S xdg-desktop-portal-hyprland
