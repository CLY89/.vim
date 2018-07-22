set secure
set autoindent
set shiftwidth=4
set autoread
set autowriteall
set expandtab
set incsearch
set showcmd
set smartindent
set wildmenu
set pumheight=10

filetype plugin indent on
syntax on

if filereadable(expand($HOME . '.local/vimrc_local'))
	source $HOME . '.local/vimrc_local'
endif
