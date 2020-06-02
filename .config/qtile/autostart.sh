#!/bin/sh

# auto screen lock
pidof xautolock || xautolock -time 5 -locker slock &
# remap caps lock
setxkbmap -option caps:escape &
# turn on blue light filter
redshift -P -O 3500 &
# set screen resolution
xrandr --output eDP-1 --mode 3840x2160 --scale 0.5x0.5 &

# https://wiki.archlinux.org/index.php/Libinput
# find device id 'xinput list'
# find device props 'xinput list-props <device_id>'
# touchpad enable tap to click

xinput set-prop 13 303 1 &
# touchpad natural scrolling
xinput set-prop 13 311 1 &

pidof nm-applet || nm-applet --sm-disable &
