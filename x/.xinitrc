#!/usr/bin/env bash

# Turn bell off
xset -b
# Bar script it's launched from bspwmrc
# Reload Xresources
[ -f ~/.Xresources ] && xrdb -merge -I$HOME ~/.Xresources
# Start the compositor (no screen tearing)
picom --config $HOME/.config/picom/picom.conf &
# Start the notification manager
dunst &
# Set a wallpaper (check '~/.local/bin')
walp
# Load latam and us as keyboards, use Alt+Caps to switch between them 
setxkbmap -model pc105 -layout us,latam -option "grp:alt_caps_toggle"
# Bored of mounting and unmounting? just uncomment
# thunar --daemon &
# Run wm
exec bspwm
