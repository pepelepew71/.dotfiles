#!/bin/bash

keywords=("Messenger" "Slack" "LINE")

for keyword in ${keywords[@]}; do
  if ! [ -z "$(wmctrl -l | grep "$keyword")" ]
  then
    wmctrl -a $keyword
    exit 1
  fi
done

wmctrl -s 3
/home/ych/scripts/chrome-chat.sh &
