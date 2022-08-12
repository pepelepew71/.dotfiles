#!/bin/bash

ICON=0
GapX=1
GapY=0
TOP_MARGIN=0
BOTTOM_MARGIN=46
LEFT_MARGIN=0
RIGHT_MARGIN=$ICON

#Max Resolution X and Y
# xrandr has got cleverer.  It knows about monitors.  The --q1 dumbs things down.. needs to be fixed
X=`xrandr --q1 | grep "*" | awk '{print $2}'`
Y=`xrandr --q1 | grep "*" | awk '{print $4}'`
#Y=`xrandr --q1 | grep "*" | awk '{print $1}' | awk -F "x" '{print $2}'`

echo Screen Resolution X x Y = $X x $Y

#Working area
WX=$((($X)-$ICON))
WY=$((($Y)-$BOTTOM_MARGIN))

echo Working area resolution X x Y = $WX x $WY

#X Cordinates
X1=$((($WX/2)))
X2=$((($WX/2)+$GapX))

#Y Cordinates
Y1=$((($WY/2)))
Y2=$((($WY/2)+$GapY))

echo X1 = $X1, X2 = $X2
echo Y1 = $Y1, Y2 = $Y2

wmctrl -r :ACTIVE: -b remove,maximized_vert,maximized_horz

case "$1" in
  'left') wmctrl -r :ACTIVE: -e "1,0,0,$X1,$WY" ;;
  'right') wmctrl -r :ACTIVE: -e "1,$X2,0,$X2,$WY" ;;
  'top') wmctrl -r :ACTIVE: -e "1,0,0,$WX,$Y1" ;;
  'bottom') wmctrl -r :ACTIVE: -e "1,0,$Y1,$WX,$Y1" ;;
  'top-left') wmctrl -r :ACTIVE: -e "1,0,0,$X1,$Y1" ;;
  'top-right') wmctrl -r :ACTIVE: -e "1,$X2,0,$X2,$Y1" ;;
  'bottom-left') wmctrl -r :ACTIVE: -e "1,0,$Y2,$X1,$Y1" ;;
  'bottom-right') wmctrl -r :ACTIVE: -e "1,$X2,$Y2,$X1,$Y1" ;;
  'full') wmctrl -r :ACTIVE: -e "1,0,0,$WX,$WY" ;;
  *) echo "Usage: $0 {left|right|top|bot|top-right|top-left|bottom-right|bottom-left}" ; exit 1;;
esac

