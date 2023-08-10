#!/bin/bash

if [[ -z $(playerctl status -s) ]];then

	echo ''

elif [[ "$(playerctl status -s)" = "Paused" ]];then 

	echo ''

elif [[ "$(playerctl status -s)" = "Playing" ]];then

	echo ''

else
	echo ''
fi
