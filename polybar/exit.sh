#!/bin/bash

# with openrc use loginctl
[[ $(cat /proc/1/comm) == "systemd" ]] && logind=systemctl || logind=loginctl

case "$1" in
    lock)
        blurlock
        ;;
    logout)
        i3-msg exit
        ;;
    switch_user)
    	dm-tool switch-to-greeter
    	;;
    suspend)
        blurlock && $logind suspend
        ;;
    hibernate)
    	blurlock && $logind hibernate
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
