#!/usr/bin/env bash

# Terminate already running bar instances
# If all your bars have ipc enabled, you can use 
# Otherwise you can use the nuclear option:
# killall -q polybar

echo "---" | tee -a /tmp/polybar1.log 
polybar --config=$HOME/.config/polybar/config.ini bar 2>&1 | tee -a /tmp/polybar.log & disown

