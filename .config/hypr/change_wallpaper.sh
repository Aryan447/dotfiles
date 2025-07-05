#!/bin/bash

WALLPAPER_DIR="$HOME/personal/wallpapers"
MONITOR="eDP-1"
WALLPAPER=$(find "$WALLPAPER_DIR" -type f | shuf -n 1)
hyprctl hyprpaper unload all
hyprctl hyprpaper preload "$WALLPAPER"
hyprctl hyprpaper wallpaper "$MONITOR,$WALLPAPER"
