#!/usr/bin/env bash

# Disable beep sound
xset -b

# Reload Xresources
[ -f ~/.Xresources ] && xrdb -merge -I$HOME ~/.Xresources

# Start the compositor (no screen tearing)
picom --config $HOME/.config/picom/picom.conf &

# Start the notification manager
dunst &

# Set a wallpaper (check '.local/bin')
walp

# Load latam and us as keyboards, use Alt+Caps to switch between them 
setxkbmap -model pc105 -layout us,latam -option "grp:alt_caps_toggle"

# Bored of manual mounting and unmounting?
thunar --daemon &

# (running sxhkd from here makes the gid different from the one in bspwmrc,this
# way sxhkd won't die when bspwm is restarted).
pgrep -x sxhkd > /dev/null || sxhkd &

exec bspwm
