#!/usr/bin/env bash

cp ~/.Xresources ./
cp ~/.profile ./
cp ~/.vimrc ./
cp ~/.xinitrc ./
cp ~/.bash_profile ./
cp ~/.bashrc ./
cp ~/.screenlayout/* ./.screenlayout
cp ~/.urxvt/ext/* ./.urxvt/ext
cp ~/bin/* ./bin

cp ~/.config/redshift.conf ./.config
cp ~/.config/picom.conf ./.config
cp ~/.config/Thunar/uca.xml ./.config/Thunar
cp ~/.config/i3/config ./.config/i3
cp ~/.config/pnmixer/config ./.config/pnmixer
cp ~/.config/i3status/* ./.config/i3status

cp ~/.config/rofi ./.config -r
