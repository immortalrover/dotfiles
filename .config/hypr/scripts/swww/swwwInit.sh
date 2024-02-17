#!/bin/bash

DIR="$HOME/Pictures/Wallpapers"
List=($(ls ${DIR}/*.{jpg,jpeg,png} | sort))

swww init && swww img ${List[0]}
