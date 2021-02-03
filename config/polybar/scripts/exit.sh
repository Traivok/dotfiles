#!/bin/bash

myLock= 'i3lock'

# with openrc use loginctl
[[ $(cat /proc/1/comm) == "systemd" ]] && logind=systemctl || logind=loginctl

case "$1" in
    lock)
        $myLock
        ;;
    logout)
        i3-msg exit
        ;;
    switch_user)
    	dm-tool switch-to-greeter
    	;;
    suspend)
        $myLock && $logind suspend
        ;;
    hibernate)
    	$myLock && $logind hibernate
        ;;
    reboot)
        $logind reboot
        ;;
    shutdown)
        $logind poweroff
    	;;
    *)
        echo "ricardo "
        exit 2
esac

exit 0
