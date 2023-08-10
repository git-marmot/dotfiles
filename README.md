| type          |                              |
| ------------- | ---------------------------- |
| bootloader    | grub                         |
| window sys    | x                            |
| os            | gnu / arch linux             |
| dm            | fairyglade / ly              |
| wm            | i3-gaps-with-rounded-corners |
| te            | alacritty                    |
| status bar    | polybar                      |
| dm            | dmenu                        |        
| compositor    | picom                        |

# NOTES
These files assume that you are using ALSA, xInput, Bash and downloaded "Font Awesome".  
Some of the dirs ARE NOT RELATIVE. Adjust the files as needed.

__Versions__
  - i3wm
    - 4.20.1-174-g95333775
    - © 2009 Michael Stapelberg and contributors
  - picom
    - vgit-b700a
  - polybar
    - 3.6.3
    - +alsa +curl +i3 +mpd +network(libnl) +pulseaudio +xkeyboard
  - bash
    - GNU bash, version 5.1.16(1)-release (x86_64-pc-linux-gnu)
    - © 2020 Free Software Foundation, Inc.

## i3wm
Contains the config and scripts

### [i3lock](i3wm/scripts/i3lock.sh)
Takes a screenshot, blurrs it and uses it as the i3lock
### [imwheel-script](i3wm/scripts/imwheel-script.sh)
Adjusts the mouse scrolling speed
### [xinput](i3wm/scripts/xinput.sh)
Enables the mousepad while typing, useful for gaming w/o mouse

## polybar
Contains the config, launch file and scripts

### [bluetooth](polybar/scripts/bluetooth.sh)
Returns a glyph for the corresponding sink (system audio/ bluetooth) and the audio volume percentage
### [mullvad](polybar/scripts/mullvad.sh)
Returns a glyph for the connection status (mullvad vpn/ no vpn)
### [player_icon](polybar/scripts/player_icon.sh)
Returns a glyph for the corresponding playerctl status (no player/ paused/ playing)
### [wifi](polybar/scripts/wifi.sh)
Returns the vpn status glyph with the internet connection speed (ping in ms)

## picom
Contains the config

## bash
Contains the [.bash_aliases](bash/.bash_aliases) and [.bashrc](bash/.bashrc) files
