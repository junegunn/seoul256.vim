```
"  _____             _ ___ ___ ___      "
" |   __|___ ___ _ _| |_  |  _|  _|     "
" |__   | -_| . | | | |  _|_  | . |     "
" |_____|___|___|___|_|___|___|___|.vim "
```

seoul256.vim
------------

*seoul256.vim* is a low-contrast Vim color scheme based on [Seoul Colors](http://www.seoul.go.kr/v2012/seoul/symbol/color.html).
Works on 256-color terminal or on GVim.

### seoul256

![seoul256](https://raw.github.com/junegunn/seoul256.vim/screenshot/seoul256.png)

### seoul256-light

![seoul256-light](https://raw.github.com/junegunn/seoul256.vim/screenshot/seoul256-light.png)

Installation
------------

[Use](https://github.com/tpope/vim-pathogen)
[your](https://github.com/gmarik/vundle)
[favorite](https://github.com/junegunn/vim-plug)
[plugin](https://github.com/Shougo/neobundle.vim)
[manager](https://github.com/MarcWeber/vim-addon-manager).

- [Pathogen](https://github.com/tpope/vim-pathogen)
  - `git clone https://github.com/junegunn/seoul256.vim.git ~/.vim/bundle/seoul256.vim`
- [Vundle](https://github.com/gmarik/vundle)
  1. Add `Bundle 'junegunn/seoul256.vim'` to .vimrc
  2. Run `:BundleInstall`
- [NeoBundle](https://github.com/Shougo/neobundle.vim)
  1. Add `NeoBundle 'junegunn/seoul256.vim'` to .vimrc
  2. Run `:NeoBundleInstall`
- [vim-plug](https://github.com/junegunn/vim-plug)
  1. Add `Plug 'junegunn/seoul256.vim'` to .vimrc
      - If you do not wish to have `t_Co` set to 256, use `no-t_co` branch
      - `Plug 'junegunn/seoul256.vim', 'no-t_co'`
  2. Run `:PlugInstall`

Color schemes
-------------

```vim
" Dark color scheme
colo seoul256

" Light color scheme
colo seoul256-light
```

Change background color
-----------------------

```vim
" seoul256:
"   Range:   233 (darkest) ~ 239 (lightest)
"   Default: 237
let g:seoul256_background = 236
colo seoul256

" seoul256-light:
"   Range:   252 (darkest) ~ 256 (lightest)
"   Default: 253
let g:seoul256_background = 256
colo seoul256-light

```

Author
------

Junegunn Choi

License
-------

MIT
