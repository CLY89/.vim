"==============================================================================
" Compatibility
"==============================================================================
if &compatible
  set nocompatible
endif

"==============================================================================
" Appearance
"==============================================================================
set background=dark
set cmdheight=2
set helplang=ja
set pumheight=10
set showcmd
set wildmenu

"==============================================================================
" Searching
"==============================================================================
set hlsearch
set ignorecase
set incsearch
set smartcase

"==============================================================================
" Editing / Indent
"==============================================================================
set autoindent
set expandtab
set infercase
set shiftwidth=4
set smartindent
set tabstop=4
set virtualedit=block

"==============================================================================
" File handling
"==============================================================================
set autoread
set autowrite
set encoding=utf-8
set nobackup
set nowritebackup
set shortmess+=c
set nomodeline " Disable modeline for security

"==============================================================================
" Misc
"==============================================================================
set hidden
set updatetime=250

"==============================================================================
" Local vimrc
"==============================================================================
if filereadable(expand($HOME . '/.local/vimrc_local'))
    source $HOME . '/.local/vimrc_local'
endif

"==============================================================================
" dein.vim - Plugin Manager
"==============================================================================
let s:dein_repo = expand('~/.vim/dein/repos/github.com/Shougo/dein.vim')
if isdirectory(s:dein_repo)
    execute 'set runtimepath^=' . s:dein_repo

    let s:dein_dir  = $HOME . '/.vim/dein'
    let s:toml_dir  = $HOME . '/.vim/toml'
    let s:toml      = s:toml_dir . '/dein.toml'
    let s:lazy_toml = s:toml_dir . '/dein_lazy.toml'

    if dein#load_state(s:dein_dir)
        call dein#begin(s:dein_dir)
        call dein#load_toml(s:toml,      {'lazy': 0})
        call dein#load_toml(s:lazy_toml, {'lazy': 1})
        call dein#end()
        call dein#save_state()
    endif

    if dein#check_install()
        call dein#install()
    endif

    colorscheme everforest
else
    echohl WarningMsg
    echomsg 'dein.vim not found. Please run the installer descrbed in README.'
    echohl None
endif

"==============================================================================
" Filetype settings
"==============================================================================
filetype plugin indent on
syntax enable
