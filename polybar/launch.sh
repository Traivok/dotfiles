# Basic script to kill all old bars and launch new.

# Terminate already running bad instances
killall -q polybar

# Wait until the processes have been shut down
while grep -x polybar >/dev/null; do sleep 1; done

# Launch the main bar
polybar main_bar

if xrandr | grep -q 'HDMI1 connected'; then polybar second_bar; fi
