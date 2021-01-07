#!/bin/bash

function toggleVol {
    if amixer -c 0 get Master | grep -q off
    then
	amixer -c 0 -q set Master unmute
	amixer -c 0 -q set Headphone unmute
	amixer -c 0 -q set Speaker unmute
    else
	amixer -c 0 -q set Master mute
    fi
}

case "$1" in
    toggle)
	toggleVol
	;;
    up)
	amixer -c 0 -q set Master 1%+ unmute
	;;
    down)
	amixer -c 0 -q set Master 1%- unmute
	;;
    *)
	echo $1
	echo 'Invalid option'
	exit 1
	;;
esac

exit 0
