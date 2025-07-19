#!/usr/bin/env bash

# File: ~/.config/hypr/scripts/battery_notify.sh

while true; do
    capacity=$(cat /sys/class/power_supply/BAT0/capacity)
    status=$(cat /sys/class/power_supply/BAT0/status)

    if [ "$capacity" -le 20 ] && [ "$status" == "Discharging" ]; then
        hyprnotify -t 5000 -s "battery" -i "" -b "Battery low: ${capacity}%"
    fi

    sleep 60
done

