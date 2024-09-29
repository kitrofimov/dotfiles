#!/bin/sh

CHOSEN=$(printf "Suspend\nReboot\nShutdown\nLog Out" | rofi -dmenu)

case "$CHOSEN" in
	"Suspend") systemctl suspend ;;
	"Reboot") systemctl reboot ;;
	"Shutdown") systemctl poweroff ;;
	"Log Out") i3-msg exit ;;
	*) exit 1 ;;
esac

