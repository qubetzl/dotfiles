#!/usr/bin/env bash

# Source all .sh scripts in profile.d
dotfilesDir="$HOME/dotfiles"

if [ -d "${dotfilesDir}" ] ; then
    for profileFragment in "$dotfilesDir"/profile.d/*.sh; do
        if [ -r "${profileFragment}" ]; then
            source "${profileFragment}"
        fi
    done
    unset profileFragment
fi

unset dotfilesDir
