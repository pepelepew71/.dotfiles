#!/usr/bin/env bash

cp ~/.config/redshift.conf ./.config/ -r
cp ~/.config/autostart ./.config/ -r
cp ~/.config/powerline-shell ./.config/ -r
cp ~/.config/scripts ./.config/ -r
cp ~/.config/rofi ./.config/ -r

cp ~/.config/xfce4/terminal ./.config/xfce4 -r

cp ~/.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-keyboard-shortcuts.xml ./.config/xfce4/xfconf/xfce-perchannel-xml/ -r
cp ~/.config/xfce4/xfconf/xfce-perchannel-xml/xfwm4.xml ./.config/xfce4/xfconf/xfce-perchannel-xml/ -r

cp ~/.vimrc      ./
cp ~/.tmux.conf  ./
