" Vim-Plug
call plug#begin('~/.vim/plugged')
Plug 'junegunn/vim-plug'
"Plug 'junegunn/seoul256.vim'
Plug 'drewtempelmeyer/palenight.vim'
call plug#end()

:set background&

" activates filetype detection
filetype plugin on

" activates syntax highlighting among other things
syntax on

set backspace=indent,eol,start

" set tab size to 4 spaces
set tabstop=4 shiftwidth=4 smarttab

" Palenight
let g:palenight_termcolors = 256
if (has("termguicolors"))
  set termguicolors
endif
color palenight

" Dracula theme
"let g:dracula_colorterm = 0
"colorscheme dracula
