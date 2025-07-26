#!/bin/bash
killall -q waybar

# Wait until the process has been shut down
while pgrep -xu $UID waybar >/dev/null; do sleep 0.5; done

# Launch Waybar
waybar &
