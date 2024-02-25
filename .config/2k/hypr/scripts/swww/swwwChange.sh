#!/bin/bash

if [[ $# -ne 1 ]]; then
	echo "Usage:
	$0 -p				use the previous wallpaper
	$0 -n				use the next wallpaper"
	exit 1
fi

source "$HOME/.config/swww/swww.conf"

DIR="$HOME/Pictures/Wallpapers"
List=($(ls ${DIR}/*.{jpg,jpeg,png} | sort))
COUNT=${#List[@]}
CURRENT="$(swww query | grep -oE "/[^ ]+")"

for ((i=0; i<$COUNT; ++i))
do
	if [ "${List[i]}" == "$CURRENT" ]; then	
		if [ $1 == '-p' ]; then
			swww img ${List[(i-1+$COUNT) % $COUNT]}
		elif [ $1 == '-n' ]; then
			swww img ${List[(i+1) % $COUNT]}
		fi
	fi
done
