#!/bin/sh
userresources=$HOME/.Xresources
usermodmap=/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

# merge in defaults keymaps

if [ -f $sysresources ]; then
    xrdb -merge $sysresorces
fi 

if [ -f $sysmomap ]; then
    xmodmap -merge $sysmomap
fi 

if [ -f $userresources ]; then
    xrdb -merge $userresources
fi 

if [ -f $usermodmap ]; then
    xmodmap -merge $usermodmap
fi 

# start some nice programs

if [ -d /etc/X11/xinit/xinitrc.d ]; then
    for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
    [ -x "$f" ] && . "$f"
    done
    unset f
fi 

# Screens
hdmi=`xrandr | grep ' connected' | grep 'HDMI' | awk '{print $1}'`

if [ "$hdmi" = "HDMI-1" ]; then
  xrandr --output eDP-1 --primary --mode 1366x768 --pos 276x1080 --output HDMI-1 --mode 1920x1080 --pos 0x0 &
else
  xrandr --output eDP-1 --primary --mode 1366x768 --pos 0x0 --rotate normal --output HDMI-1 --off --output DP-1 --off &
fi

# Automount Devices
udiskie -t &

# Audio & Video
picom &

# Java Fonts
xsettingsd &

# wallpaper
feh --bg-scale wallpapers/01.jpg &
