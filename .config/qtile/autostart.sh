#!/bin/sh

# systray wifi icon
nm-applet &
# systray battery icon
cbatticon -u 5 &
# systray volume
volumeicon &
# systray bluetooth
blueman-applet &
