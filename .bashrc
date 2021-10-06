#!/usr/bin/env bash

# Source all .sh scripts in profile.d
dotfilesDir="$HOME/dotfiles"

if [ -d "${dotfilesDir}" ] ; then
    for bashrcFragment in "$dotfilesDir"/bashrc.d/*.sh; do
        if [ -r "${bashrcFragment}" ]; then
            source "${bashrcFragment}"
        fi
    done
    unset bashrcFragment
fi

unset dotfilesDir
