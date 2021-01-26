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

" taken from https://jeffkreeftmeijer.com/vim-number/
" 'smart' relative/absolute line number
set number relativenumber
augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END

" taken from https://stackoverflow.com/a/38258720,
" set paste mode when pasting text
function! WrapForTmux(s)
	if !exists('$TMUX')
		return a:s
	endif
	let tmux_start = "\<Esc>Ptmux;"
	let tmux_end = "\<Esc>\\"
	return tmux_start . substitute(a:s, "\<Esc>", "\<Esc>\<Esc>", 'g') . tmux_end
endfunction

let &t_SI .= WrapForTmux("\<Esc>[?2004h")
let &t_EI .= WrapForTmux("\<Esc>[?2004l")

function! XTermPasteBegin()
	set pastetoggle=<Esc>[201~
	set paste
	return ""
endfunction

inoremap <special> <expr> <Esc>[200~ XTermPasteBegin()

packloadall

