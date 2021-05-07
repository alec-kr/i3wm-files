#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar
# If all your bars have ipc enabled, you can also use 
# polybar-msg cmd quit

# Launch bars with a delay of 0.5s.
# I use a delay because system icons will go
# on the bar that is first generated.
polybar controlbar &
sleep 1.5
polybar workspacebar &
sleep 0.2
polybar statusbar &
