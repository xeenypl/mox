#!/bin/bash

export NNN_PLUG='i:imgview'

export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"

export EDITOR="nvim"
export BROWSER="qutebrowser"
export SHELL="fish"
export TERMINAL="alacritty"

export LESSHISTFILE=-

xset dpms 0 0 600

setxkbmap pl -option caps:super
xcape -e 'Shift_L=Escape;Super_L=BackSpace'

picom &
sxhkd &
transmission-daemon &
xwallpaper --zoom ~/.config/wallpaper

# xinput map-to-output 19 HDMI-1

#while true
#do
#  transmission-remote -l | awk ' $2 == "100%" { printf $1 "\n"} ' | xargs  -n 1 -I x transmission-remote -t x -r
#  sleep 1
#done &

bspwm
