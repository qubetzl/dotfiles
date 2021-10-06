# This script relies on static configuration, 
# however that is not always suitable.
# 
# Different approach for configuring monitors with xrandr:
# https://github.com/codingtony/udev-monitor-hotplug
# https://stackoverflow.com/questions/5469828/how-to-create-a-callback-for-monitor-plugged-on-an-intel-graphics

# settings.sh.local is intended to be a Symbolic link
# to a settings file under `monitor` directory.
if [ -f settings.sh.local ]; then
    source settings.sh.local
fi
