#!/usr/bin/env bash

# Disabled monitors
xrandr --output HDMI-A-0 --off
xrandr --output DisplayPort-2 --off

#dpi=163
#xrandr --dpi "${dpi}"
xrandr --output DisplayPort-0 --primary --mode 3840x2160 --rotate normal
xrandr --output DisplayPort-1 --mode 3840x2160 --rotate normal --right-of DisplayPort-0

