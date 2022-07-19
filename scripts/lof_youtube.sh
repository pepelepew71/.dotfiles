#!/bin/bash

keywords=("YouTube")

for keyword in ${keywords[@]}; do
  if ! [ -z "$(wmctrl -l | grep "$keyword")" ]
  then
    wmctrl -a $keyword
    exit 1
  fi
done

wmctrl -s 3
/home/ych/scripts/chrome-youtube.sh &
