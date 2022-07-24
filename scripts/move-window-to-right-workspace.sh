#!/bin/sh

c=`wmctrl -d | grep '*' | cut -d ' ' -f1`

if [ $c -lt 4 ]
then
    wmctrl -r :ACTIVE: -t $(($c + 1))
    wmctrl -s $(($c + 1))
fi
