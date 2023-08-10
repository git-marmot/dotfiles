#!/bin/bash

status=$(mullvad status)
if [[ "$status" = "Disconnected" ]];then
	echo ''
else
	echo ''
fi
