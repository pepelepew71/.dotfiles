#!/bin/sh

window_id=`xdotool getactivewindow`
wmctrl -ir $window_id -b toggle,hidden

