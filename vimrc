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
set infercase
set showcmd
set smartindent
set wildmenu
set pumheight=10
set helplang=ja
set cmdheight=2
set fileencoding=utf-8

if filereadable(expand($HOME . '.local/vimrc_local'))
    source $HOME . '.local/vimrc_local'
endif

if &compatible
    set nocompatible
endif

set runtimepath+=$HOME/.vim/dein/repos/github.com/Shougo/dein.vim

let s:dein_dir = $HOME . '/.vim/dein'
let s:toml_dir  = $HOME . '/.vim/toml/'
let s:toml      = s:toml_dir . '/dein.toml'
let s:lazy_toml = s:toml_dir . '/dein_lazy.toml'

if dein#load_state(s:dein_dir)
    call dein#begin(s:dein_dir)
    call dein#load_toml(s:toml,      {'lazy': 0})
    call dein#load_toml(s:lazy_toml, {'lazy': 1})
    call dein#end()
    call dein#save_state()
endif

filetype plugin indent on
syntax enable
