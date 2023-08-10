#!/usr/bin/env bash

PICTURE=$HOME/pictures/tmp/i3lock.png

BLUR="10x5"

scrot $PICTURE
convert $PICTURE -blur $BLUR $PICTURE 
i3lock -i $PICTURE
rm $PICTURE
