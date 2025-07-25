#!/usr/bin/env bash

sudo pacman -Syu --noconfirm hyprland hyprpaper hyprlock swaync hyprshot hypridle udiskie rofi-wayland nautilus eog hyprpolkitagent blueman batsignal swww xdg-desktop-portal-hyprland --needed

if command -v paru &> /dev/null; then
    paru -Syu --noconfirm hyprnotify wlogout wshowkeys-mao-git waypaper cliphist networkmanager-dmenu dmenu-bluetooth --needed
fi

sudo systemctl enable NetworkManager
sudo systemctl start NetworkManager
