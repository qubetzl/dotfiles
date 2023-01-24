#!/usr/bin/env sh

# Source all .sh scripts in profile.d and profile.local.d
dotfilesDir="$HOME/dotfiles"

if [ -d "$dotfilesDir" ] ; then
    for fragment in "$dotfilesDir"/profile.d/*.sh "$dotfilesDir"/profile.local.d/*.sh; do
        if [ -r "$fragment" ]; then
            . "$fragment"
        fi
    done
    unset fragment
fi

unset dotfilesDir
