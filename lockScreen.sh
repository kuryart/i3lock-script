#!/bin/bash

# Take a Screenshot
scrot -b 'lockScreen.jpg'

# Converts screenshot to png and blurs it
convert lockScreen.jpg -blur 20x10 blurred.png

# Put on-image.png on blurred.png
composite -gravity center ./on-image.png blurred.png final.png

# Remove tmp files and add final image to tmp
rm blurred.png lockScreen.jpg
rm /tmp/lockScreen.png
cp final.png /tmp/lockScreen.png
rm final.png

# Change Keyboard Layout To English
xdotool key alt+shift

# Run i3lock
i3lock -i /tmp/lockScreen.png -d -I 30
