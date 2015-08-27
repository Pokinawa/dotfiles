#!/bin/sh
# Script to configure X, start common apps, and start xmonad.
# Author: Vic Fryzel
# http://github.com/vicfryzel/xmonad-config


# Configure PATH so that we can access our scripts below
PATH=$PATH:~/.xmonad/bin

# Configure X
xsetroot -cursor_name left_ptr &
xrdb -merge ~/.Xdefaults &
sh ~/.fehbg &

# Start X composite manager
exec compton &

# Rebind CAPS as Escape
xmodmap -e 'clear Lock' #ensures you're not stuck in CAPS on mode
xmodmap -e 'keycode 0x42=Escape' #remaps the keyboard so CAPS LOCK=ESC

# Start 3 normal terminals
terminator &
terminator &
terminator &

# Start a browser
chromium &

# Start Skype
skype &

# Start irssi in terminal
terminator -T Irssi -e irssi -p Old &

# Start screensaver
# Kill gnome-screensaver if started by default
killall gnome-screensaver  -n&
xscreensaver -no-splash &
setxkbmap gb &

# Start sound server
pulseaudio --start &
pa-applet &

exec trayer --edge top --align right --SetDockType true --SetPartialStrut true --expand true --width 6 --transparent true --alpha 0 --tint 0x000000 --height 16 &
exec xmonad
