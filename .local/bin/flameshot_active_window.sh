#!/bin/sh

eval $(xdotool getactivewindow getwindowgeometry --shell)
REGION="${WIDTH}x${HEIGHT}+${X}+${Y}"
flameshot gui --region "$REGION"
