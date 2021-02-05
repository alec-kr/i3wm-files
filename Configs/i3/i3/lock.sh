#!/bin/bash

# Path to where the image will be stored
IMAGE="/tmp/i3lock.png"
ICON="/home/alec-kr/Pictures/lock.png"

# Command to take a screenshot
SCREENSHOT="scrot $IMAGE"

# Take the screenshot
$SCREENSHOT

# Downscale the image by 10% then upscale it by 1000%.
# This operation will add a pixelation effect to the image
# Technique obtained from:
# https://www.andreafortuna.org/2020/04/09/i3-how-to-make-a-pretty-lock-screen-with-a-four-lines-of-bash-script/
convert $IMAGE -scale 5% -scale 2000% $IMAGE
# convert $IMAGE -scale 10% -scale 1000% $IMAGE

convert $IMAGE $ICON -gravity center -composite $IMAGE


# Lock the computer via i3lock, 
# and use the blurred image as the wallpaper
i3lock -u -i $IMAGE

# Remove the image after computer is unlocked
rm $IMAGE