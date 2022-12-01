#!/bin/bash

id=$(xinput list --id-only 'SynPS/2 Synaptics TouchPad')
xinput set-prop $id 'libinput Disable While Typing Enabled' 0
