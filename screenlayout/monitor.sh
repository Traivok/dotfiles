#!/bin/bash

if xrandr | grep -q 'HDMI1 connected'; then
    echo "Dual monitor"
    sh ~/.config/screenlayout/multi-monitor.sh
else
    echo "Mono monitor"
    sh ~/.config/screenlayout/mono-monitor.sh
fi

echo "Restoring wallpaper settings"
nitrogen --restore
