#!/usr/bin/env bash
set -euo pipefail

CAPS_ON="CAPS"
CAPS_OFF=""

# Caps LED file
LED=$(ls -d /sys/class/leds/*capslock*/brightness 2>/dev/null | head -n1)

# Initial state (need to toggle because... idk)
state=$(cat "$LED")
if [ "$state" = "1" ]; then
    state=0
    echo "$CAPS_ON"
else
    state=1
    echo "$CAPS_OFF"
fi

# Find a keyboard device
EVENT=$(
  for dev in /dev/input/event*; do
    props=$(udevadm info --query=property --name="$dev")
    if echo "$props" | grep -q 'ID_INPUT_KEYBOARD=1' && \
       ! echo "$props" | grep -q 'ID_INPUT_MOUSE=1'; then
      echo "$dev"
      break   # take the first match only
    fi
  done
)

# Listen for events
evtest "$EVENT" | while read -r line; do
    if [[ "$line" == *"LED_CAPSL"* ]]; then
        # Toggle local state
        if [ "$state" = "1" ]; then
            state=0
            echo "$CAPS_OFF"
        else
            state=1
            echo "$CAPS_ON"
        fi
    fi
done

