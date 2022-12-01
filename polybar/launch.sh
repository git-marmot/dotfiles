#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -x polybar >/dev/null; do sleep 1; done

# Launch polybar
polybar main 2>&1 | tee -a /tmp/polybar1.log & disown
polybar invis 2>&1 | tee -a /tmp/polybar2.log & disown	
