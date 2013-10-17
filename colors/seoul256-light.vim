" "  _____             _ ___ ___ ___            "
" " |   __|___ ___ _ _| |_  |  _|  _|           "
" " |__   | -_| . | | | |  _|_  | . |           "
" " |_____|___|___|___|_|___|___|___|-light.vim "
"
" " Low-contrast light Vim color scheme using Seoul Colors "
"
" File:         seoul256-light.vim
" URL:          github.com/junegunn/seoul256.vim
" Author:       Junegunn Choi (junegunn.c@gmail.com)
" Version:      1.3.0
" Last Updated: October 16, 2013
" License:      MIT
"
" Copyright (c) 2013 Junegunn Choi
"
" MIT License
"
" Permission is hereby granted, free of charge, to any person obtaining
" a copy of this software and associated documentation files (the
" "Software"), to deal in the Software without restriction, including
" without limitation the rights to use, copy, modify, merge, publish,
" distribute, sublicense, and/or sell copies of the Software, and to
" permit persons to whom the Software is furnished to do so, subject to
" the following conditions:
"
" The above copyright notice and this permission notice shall be
" included in all copies or substantial portions of the Software.
"
" THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
" EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
" MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
" NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
" LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
" OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
" WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

let s:master    = get(split(globpath(&rtp, 'colors/seoul256.vim'), '\n'), 0, '')
let s:custom_bg = get(g:, 'seoul256_background', 253)
let s:dark      = s:custom_bg >= 233 && s:custom_bg <= 239

if !empty(s:master)
  try
    " Ignore g:seoul256_background and force light version
    if s:dark
      unlet g:seoul256_background
    endif

    if get(g:, 'colors_name', '') == 'seoul256-light' && &background == 'dark'
      set background=dark
    else
      set background=light
    endif
    let g:colors_name = 'seoul256'
    execute 'silent source '.s:master
    let g:colors_name = &background == 'dark' ? 'seoul256' : 'seoul256-light'
  finally
    if s:dark
      let g:seoul256_background = s:custom_bg
    endif
  endtry
else
  echom 'seoul256.vim not found'
endif

