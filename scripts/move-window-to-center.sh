#!/bin/bash

monitor=("$(get-current-window-monitor.sh)")
text=$(xrandr | grep -w $monitor)
w=$(sed -r 's/.+\ (([0-9]+)x([0-9]+)\+([0-9]+)\+([0-9]+)).*$/\2/' <<< $text)
h=$(sed -r 's/.+\ (([0-9]+)x([0-9]+)\+([0-9]+)\+([0-9]+)).*$/\3/' <<< $text)
x=$(sed -r 's/.+\ (([0-9]+)x([0-9]+)\+([0-9]+)\+([0-9]+)).*$/\4/' <<< $text)
y=$(sed -r 's/.+\ (([0-9]+)x([0-9]+)\+([0-9]+)\+([0-9]+)).*$/\5/' <<< $text)

width=$(xdotool getactivewindow getwindowgeometry --shell | head -4 | tail -1 | sed 's/[^0-9]*//')
height=$(xdotool getactivewindow getwindowgeometry --shell | head -5 | tail -1 | sed 's/[^0-9]*//')

newPosX=$((x+width/2))
newPosY=$((y+height/2))

xdotool getactivewindow windowmove "$newPosX" "$newPosY"

# echo $w $h $x $y
# echo $width $height
# echo $newPosX $newPosY
