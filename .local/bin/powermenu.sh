#!/bin/sh

CHOSEN=$(printf "Suspend\nReboot\nShutdown\nLog out" | rofi -dmenu)

case "$CHOSEN" in
	"Suspend") systemctl suspend ;;
	"Reboot") systemctl reboot ;;
	"Shutdown") systemctl poweroff ;;
	"Log out") hyprctl dispatch exit ;;
esac
