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

        call dein#add('~/.vim/dein/repos/github.com/Shougo/dein.vim')
        call dein#add('Shougo/deoplete.nvim')
        
        if !has('nvim')
            call dein#add('roxma/nvim-yarp')
            call dein#add('roxma/vim-hug-neovim-rpc')
        endif

        call dein#add('vim-jp/vimdoc-ja')
        call dein#add('davidhalter/jedi-vim', {'on_ft': ['python']})
        call dein#add('Shougo/neosnippet.vim')
        call dein#add('Shougo/neosnippet-snippets')

        call dein#end()
        call dein#save_state()
endif

let g:deoplete#enable_at_startup=1
set completeopt-=preview

filetype plugin indent on
syntax enable

imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
            \ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
