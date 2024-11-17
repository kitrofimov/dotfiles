#!/bin/bash

# This script launches `scrcpy` server and forwards the phone's microphone into
# a virtual PipeWire source.
# See https://github.com/Genymobile/scrcpy/blob/master/doc/audio.md
#     https://github.com/Genymobile/scrcpy/issues/4208
#     https://gitlab.freedesktop.org/pipewire/pipewire/-/wikis/Virtual-Devices#virtual-devices

# See https://stackoverflow.com/questions/821396/aborting-a-shell-script-if-any-command-returns-a-non-zero-value`
set -e

MODULE_ID=$(pactl load-module module-null-sink media.class=Audio/Source/Virtual sink_name=AndroidMicScrcpy channel_map=front-left,front-right)
echo "Created the virtual microphone (ID=$MODULE_ID)"
scrcpy --audio-source=mic --no-window &

sleep 3

echo "Running pw-link..."
pw-link scrcpy:output_FL AndroidMicScrcpy:input_FL
pw-link scrcpy:output_FR AndroidMicScrcpy:input_FR
pw-link -d scrcpy:output_FL alsa_output.pci-0000_29_00.6.analog-stereo:playback_FL
pw-link -d scrcpy:output_FR alsa_output.pci-0000_29_00.6.analog-stereo:playback_FR
echo "Done!"

wait

echo "Deleting the virtual microphone (ID=$MODULE_ID)"
pactl unload-module "$MODULE_ID"

