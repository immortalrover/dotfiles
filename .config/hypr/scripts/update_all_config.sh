#!/bin/bash

DIR="$HOME/GitHub/dotfiles"

# vim
cp ~/.vimrc $DIR/
cp ~/.vim/*.vim $DIR/.vim/

# fish
cp -r ~/.config/fish/* $DIR/.config/fish/

# glow
cp ~/.config/glow/* $DIR/.config/glow/

# hypr
cp -r ~/.config/hypr/* $DIR/.config/hypr/

# kitty
cp -r ~/.config/kitty/* $DIR/.config/kitty/

# rofi
cp ~/.config/rofi/* $DIR/.config/rofi/

# swww
cp ~/.config/swww/* $DIR/.config/swww/

# yazi
cp -f -r ~/.config/yazi/* $DIR/.config/yazi/

# ags
cp -f -r ~/.config/ags/* $DIR/.config/ags/
