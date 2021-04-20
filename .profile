#!/usr/bin/env bash

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

# set PATH so it includes user's custom scripts if the default directory exists
if [ -d "$HOME/scripts" ] ; then
    PATH="$HOME/scripts:$PATH"
fi

# Default file and dir permission mask
# Subracting from 666 for files and 777 for directories
umask 0002

alias ll='ls -lh --color=auto'
#ksuperkey -e 'Super_L=Alt_L|F1'

