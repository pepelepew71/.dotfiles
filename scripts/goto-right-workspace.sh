#!/bin/sh

c=`wmctrl -d | grep '*' | cut -d ' ' -f1`

if [ $c -lt 4 ]
then
    wmctrl -s $(($c + 1))
fi

