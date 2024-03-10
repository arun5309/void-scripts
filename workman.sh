#!/bin/sh

# make altgr to alt
# setxkbmap -option altwin:meta_alt

# set default layout to workman
# setxkbmap us -variant workman

# Swap around modifier keys (Refer https://unix.stackexchange.com/questions/188164/override-a-few-keycodes-with-xkb)
# Keycodes in file /usr/share/X11/xkb/keycodes/evdev
# setxkbmap -print | sed -e '/xkb_keycodes/s/"[[:space:]]/+local&/' | xkbcomp -I${HOME}/.xkb - $DISPLAY # Not working
xkbcomp /home/arun/scripts/workman.xkb $DISPLAY

########### Old way using xmodmap

# clear lock
# xmodmap -e "clear lock"

# make backspace capslock and +(numpad) to work properly 
# xmodmap ~/scripts/workman.xmodmap
