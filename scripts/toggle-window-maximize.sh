#!/bin/sh

window_id=`xdotool getactivewindow`
wmctrl -ir $window_id -b toggle,maximized_vert,maximized_horz

