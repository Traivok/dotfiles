#!/bin/bash

if xrandr | grep -q 'HDMI1 connected'; then
    echo "Dual monitor"
    sh ~/.screenlayout/dual-monitor.sh
else
    echo "Mono monitor"
    sh ~/.screenlayout/mono-monitor.sh
fi

echo "Restoring wallpaper settings"
nitrogen --restore
