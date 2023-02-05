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

# Source ~/.bashrc running Bash and it exists
if [ -n "$BASH_VERSION" ] && [ -f "$HOME/.bashrc" ]; then
    # This is how ~/.profile and ~/.bashrc sourcing is setup by convention
    # (and historically). Examples for historic use are avaiable under
    # /usr/share/doc/bash/examples/startup-files privided by the `bash-doc`
    # package.
    . "$HOME/.bashrc"
fi
