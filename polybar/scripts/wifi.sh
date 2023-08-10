#!/bin/bash

ping=$(ping -c 1 8.8.8.8 2>&1)
vpn=$(/home/drunkenmarmot/.config/polybar/scripts/mullvad.sh)

if [[ $ping =~ "time=" ]]; then
	line=$(echo "$ping" |grep -o 'time=[^ ]*' | cut -d '=' -f 2)
	echo "$vpn $line"
else
	echo "$vpn ∞"
fi
