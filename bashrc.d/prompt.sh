if command -v starship &> /dev/null; then
    eval "$(starship init bash)"
elif command -v powerline-daemon &> /dev/null; then
    powerline-daemon -q
    POWERLINE_BASH_CONTINUATION=1
    POWERLINE_BASH_SELECT=1
    repository_root="/usr/share"
    . ${repository_root}/powerline/bindings/bash/powerline.sh
else
    PS1='\[\033[01;34m\]\w\[\033[00m\]\$ '
fi
