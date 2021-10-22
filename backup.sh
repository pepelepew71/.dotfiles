#!/usr/bin/env bash

# -- X11
cp ~/.Xresources ./
cp ~/.xinitrc ./
cp ~/.profile ./

# -- shell
cp ~/.bash_profile ./
cp ~/.bashrc ./

#cp ~/.zshrc ./
#cp ~/.zshenv ./
#cp ~/.zprofile ./

# -- setup
cp ~/.vimrc ./
cp ~/.screenlayout/* ./.screenlayout
cp ~/.urxvt/ext/* ./.urxvt/ext

# -- config
cp ~/.config/starship.toml ./.config
cp ~/.config/redshift.conf ./.config
cp ~/.config/picom.conf ./.config
cp ~/.config/conky/conky.conf ./.config/conky
cp ~/.config/Thunar/uca.xml ./.config/Thunar
cp ~/.config/i3/config ./.config/i3
cp ~/.config/pnmixer/config ./.config/pnmixer
cp ~/.config/i3status/* ./.config/i3status
cp ~/.config/copyq/copyq.conf ./.config/copyq
cp ~/.config/tint2/tint2rc ./.config/tint2
cp ~/.config/rofi ./.config -r

# -- script
cp ~/scripts/* ./scripts -r
