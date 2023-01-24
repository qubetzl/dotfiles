#!/usr/bin/env bash

# Source all .sh scripts in bashrc.d and bashrc.local.d
dotfilesDir="$HOME/dotfiles"

if [ -d "${dotfilesDir}" ] ; then
    for fragment in "$dotfilesDir"/bashrc{.d,.local.d}/*.sh; do
        if [ -r "${fragment}" ]; then
            . "${fragment}"
        fi
    done
    unset fragment
fi

unset dotfilesDir
