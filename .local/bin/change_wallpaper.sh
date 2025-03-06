#!/bin/bash
wallpaper=$(zenity --file-selection)

swww img "$wallpaper"
wallust run "$wallpaper"

# Reload configurations
killall -SIGUSR2 waybar
makoctl reload
