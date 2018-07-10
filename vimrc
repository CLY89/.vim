set secure
set autoindent
set shiftwidth=4
set autoread
set autowriteall
set incsearch
set showcmd
set wildmenu
set pumheight=10

filetype plugin on
syntax on

if filereadable(expand($HOME . '.local/vimrc_local'))
	source $HOME . '.local/vimrc_local'
endif
