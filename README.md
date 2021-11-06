## .Vim - Vi Improved Run Commands

This is my simple vim setup.

## Require Vim Versions

Version 8.0 or above

## Requirement

[dein.vim](https://github.com/Shougo/dein.vim)
```sh
curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
sh ./installer.sh ~/.vim/dein
mkdir ~/.vim/toml
touch ~/.vim/toml/dein.toml
touch ~/.vim/toml/dein_lazy.toml
```

**Examples : dein.toml**
```toml
[[plugins]]
repo = "vim-airline/vim-airline"
depends = "vim-airline-themes"
hook_add = '''
    let g:airline#extensions#tabline#enabled = 1
    let g:airline#extensions#tabline#formatter = 'unique_tail'
'''
```

**Examples : dein_lazy.toml**
```toml
[[plugins]]
repo = "cespare/vim-toml"
on_ft = "toml"
```

## License

WTFPL
