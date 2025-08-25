#!/bin/bash

wallpaper=$(zenity --file-selection)
[ -z "$wallpaper" ] && exit 1

palettes="dark16
darkcomp16
light16
lightcomp16"
palette=$(echo "$palettes" | rofi -dmenu -p "Choose palette")
[ -z "$palette" ] && exit 1

swww img "$wallpaper" -t fade
wallust run "$wallpaper" --palette "$palette"

# Reload configs
killall -SIGUSR2 waybar
makoctl reload

