# Basic script to kill all old bars and launch new.

DIR="$HOME/.config/polybar"

# Terminate already running bad instances
killall -q polybar

# Wait until the processes have been shut down
while grep -x polybar >/dev/null; do sleep 1; done

# Launch the main bar
polybar -q main -c "$DIR/config.ini"

if xrandr | grep -q 'HDMI-1 connected'; then
    polybar -q secondary -c "$DIR/config.ini"
fi
