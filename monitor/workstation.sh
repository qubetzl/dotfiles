#!/usr/bin/env bash

# Disabled monitors
xrandr --output DisplayPort-1 --off
xrandr --output DisplayPort-2 --off

#dpi=163
#xrandr --dpi "${dpi}"
xrandr --output DisplayPort-0 --primary --mode 3840x2160 --rotate normal --left-of HDMI-A-0
xrandr --output HDMI-A-0 --mode 3840x2160 --rotate normal

