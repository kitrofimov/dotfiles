#!/bin/bash

# This script launches `scrcpy` server and forwards the phone's camera
# to previously created `v4l2` sink.
# See https://github.com/Genymobile/scrcpy/blob/master/doc/v4l2.md
#     https://github.com/Genymobile/scrcpy/blob/master/doc/camera.md
#     https://wiki.archlinux.org/title/V4l2loopback

# See https://stackoverflow.com/questions/821396/aborting-a-shell-script-if-any-command-returns-a-non-zero-value`
set -e

sudo modprobe -r v4l2loopback
sudo modprobe v4l2loopback video_nr=99 exclusive_caps=1
scrcpy --video-source=camera --camera-size=1920x1080 --camera-facing=back --v4l2-sink=/dev/video99 --no-window

