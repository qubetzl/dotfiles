#!/usr/bin/env bash

# If not running interactively, don't do anything
# This prevents ~/.bashrc from running, when sourced from ~/.profile in a
# non-interactive session
case $- in
    *i*) ;;
      *) return;;
esac

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
