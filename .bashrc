#!/usr/bin/env bash

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

EDITOR=vim

#powerline statusline plugin
powerline-daemon -q
POWERLINE_BASH_CONTINUATION=1
POWERLINE_BASH_SELECT=1
repository_root="/usr/share"
. ${repository_root}/powerline/bindings/bash/powerline.sh
