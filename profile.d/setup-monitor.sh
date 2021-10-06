# settings.sh.local is intended to be a Symbolic link
# to a settings file under `monitor` directory.
if [ -f settings.sh.local ]; then
    source settings.sh.local
fi
