#!/bin/bash
set -e
set -u

function setup_vim_plug() {
    curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
}

function install_dependencies() {
    setup_vim_plug
}

function check_and_link() {
    local src="${1}"
    local dst="${2}"
    
    if [ ! -L "${dst}" ]; then
        [ -f "${dst}" ] || [ -d "${dst}" ] && mv -v "${dst}" "${dst}.bak"
        ln -s "${src}" "${dst}"
    fi
}

function link_dotfiles() {
    # VIM
    check_and_link ~/dotfiles/vim/.vim ~/.vim
    check_and_link ~/dotfiles/vim/.vimrc ~/.vimrc
    
    # SSH
    check_and_link ~/dotfiles/.ssh/config ~/.ssh/config
    
    # Bash
    check_and_link ~/dotfiles/.bashrc ~/.bashrc
    
    # PAM
    check_and_link ~/dotfiles/.pam_environment ~/.pam_environment
    
    # Top
    check_and_link ~/dotfiles/.toprc ~/.toprc
}

function setup() {
    link_dotfiles
    echo "Setup done."
}

function main() {
    case "${1-}" in 
    deps)   install_dependencies ;;
    *) setup ;;
    esac
}

main $*

