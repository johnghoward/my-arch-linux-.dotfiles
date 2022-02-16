#!/bin/bash

# Keyboard layout
setxkbmap -layout latam

# Start picom
DISPLAY=":0" /usr/bin/picom --experimental-backends --unredir-if-possible -b

# Set background
SCRIPT_DIR=$(dirname "$(realpath "$0")")
$SCRIPT_DIR/background.sh &

# Start flameshot
/usr/bin/flameshot & disown

# Turn numlock on
/usr/bin/numlockx on

# Notifications
dunst & disown

# Start desktop files in /etc/xdg/autostart and ~/.config/autostart
dex -a
