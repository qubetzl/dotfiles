#!/usr/bin/env bash

# Source all .sh scripts in profile.d
dotfilesDir="$HOME/dotfiles"

if [ -d "${dotfilesDir}" ] ; then
    for dotfileSource in "$dotfilesDir"/profile.d/*.sh; do
        if [ -r "${dotfileSource}" ]; then
            source "${dotfileSource}"
        fi
    done
    unset dotfileSource
fi

unset dotfilesDir
