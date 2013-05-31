```
"  _____             _ ___ ___ ___      "
" |   __|___ ___ _ _| |_  |  _|  _|     "
" |__   | -_| . | | | |  _|_  | . |     "
" |_____|___|___|___|_|___|___|___|.vim "
```

seoul256.vim
------------

*seoul256.vim* is a low-contrast dark Vim color scheme based on [Seoul Colors](http://www.seoul.go.kr/v2012/seoul/symbol/color.html).
Works on 256-color terminal or on GVim.

![seoul256.vim](https://raw.github.com/junegunn/seoul256.vim/screenshot/seoul256.png)

Installation (with Vundle)
--------------------------

Add the following line to your .vimrc,

```vim
Bundle 'junegunn/seoul256.vim'
```

then, execute `BundleInstall` command.

Change background color
-----------------------

```vim
" Range: 234 (darkest) ~ 238 (lightest)
" Default: 237 (recommended)
let g:seoul256_background = 236
colo seoul256
```

Author
------

Junegunn Choi

License
-------

MIT
