#!/bin/bash

device=$(pactl list short sinks | grep "RUNNING")
vol=$(amixer sget Master | awk -F"[][]" '/Left:/ { print $2 }')

if [[ $device == *"bluez"* ]]; then
	echo " $vol"
else
	echo "  $vol"
fi
