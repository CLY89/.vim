set hidden
set nobackup
set nowritebackup
set updatetime=300
set shortmess+=c
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
set helplang=ja

if filereadable(expand($HOME . '.local/vimrc_local'))
	source $HOME . '.local/vimrc_local'
endif

if &compatible
    set nocompatible
endif

set runtimepath+=~/.vim/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.vim/dein')
        call dein#begin('~/.vim/dein')

        let s:toml_dir  = '~/.vim/toml/'
        let s:toml      = s:toml_dir . '/dein.toml'
        let s:lazy_toml = s:toml_dir . '/dein_lazy.toml'

        call dein#load_toml(s:toml,      {'lazy': 0})
        call dein#load_toml(s:lazy_toml, {'lazy': 1})

        call dein#end()
        call dein#save_state()
endif

filetype plugin indent on
syntax enable
