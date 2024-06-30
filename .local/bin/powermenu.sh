#!/bin/sh

CHOSEN=$(printf "Suspend\nReboot\nShutdown\nLog Out" | rofi -dmenu)

case "$CHOSEN" in
	"Suspend") systemctl suspend ;;
	"Reboot") reboot ;;
	"Shutdown") poweroff ;;
	"Log Out") hyprctl dispatch exit ;;
	*) exit 1 ;;
esac

