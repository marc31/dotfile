#!/bin/sh

# /etc/X11/xinit/xinitrc
#
# global xinitrc file, used by all X sessions started by xinit (startx)

setxkbmap fr

# invoke global X session script
. /etc/X11/Xsession

# Called .Xressources
[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources
