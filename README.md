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

Installation (with Vundle)
--------------------------

Add the following line to your .vimrc,

```vim
Bundle 'junegunn/seoul256.vim'
```

then, execute `BundleInstall` command.

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
"   Range:   234 (darkest) ~ 239 (lightest)
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
