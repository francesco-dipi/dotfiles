" Show line number in gray
set number
highlight LineNr ctermfg=grey

" pathogen
execute pathogen#infect()

" load .bashrc when executing command:
set shell=bash\ --login
set shellcmdflag=-ic

" show partial commands in status line
set showcmd

" show matching brackets.
set showmatch

" incremental search
set incsearch

" highlight search result
set hlsearch

" syntax highlighting
syntax on

" use a dark background
set background=dark

" to make use of e.g.: https://github.com/guns/vim-clojure-static
filetype plugin indent on

" enable rainbow parentheses
let g:rainbow_active = 1

