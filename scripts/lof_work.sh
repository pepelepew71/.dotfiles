#!/bin/bash

BASE_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

keywords=("日曆" "Trello" "Keep" "Gmail")

for keyword in ${keywords[@]}; do
  if ! [ -z "$(wmctrl -l | grep "$keyword")" ]
  then
    wmctrl -a $keyword
    exit 1
  fi
done

wmctrl -s 3
$BASE_DIR/chrome-work.sh &
