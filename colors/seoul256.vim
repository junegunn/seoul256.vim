" "  _____             _ ___ ___ ___      "
" " |   __|___ ___ _ _| |_  |  _|  _|     "
" " |__   | -_| . | | | |  _|_  | . |     "
" " |_____|___|___|___|_|___|___|___|.vim "
"
" " Low-contrast dark Vim color scheme using Seoul Colors "
"
" File:         seoul256.vim
" URL:          github.com/junegunn/seoul256.vim
" Author:       Junegunn Choi (junegunn.c@gmail.com)
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

let s:rgb_map = {
  \ 'NONE': 'NONE',
  \ 101: "#989673",
  \ 110: "#99bcdc",
  \ 116: "#98dddd",
  \ 131: "#bc7473",
  \ 132: "#bc7697",
  \ 136: "#bc9520",
  \ 138: "#bc9998",
  \ 143: "#bcb975",
  \ 144: "#bcba99",
  \ 145: "#bcbcbc",
  \ 152: "#bcddde",
  \ 153: "#bcdefd",
  \ 161: "#df2c72",
  \ 168: "#de7898",
  \ 173: "#de9875",
  \ 179: "#deba76",
  \ 181: "#debdbb",
  \ 184: "#ded92e",
  \ 186: "#dedb9b",
  \ 187: "#dedbbd",
  \ 188: "#dedede",
  \ 189: "#dee0fd",
  \ 195: "#defdfe",
  \ 209: "#fd9a76",
  \ 216: "#fdbc9a",
  \ 218: "#fec0de",
  \ 220: "#feda31",
  \ 221: "#fedb79",
  \ 222: "#fedc9c",
  \ 223: "#feddbe",
  \ 224: "#fedfde",
  \ 230: "#fefcdf",
  \ 231: "#fefefe",
  \ 232: "#020202",
  \ 233: "#161616",
  \ 234: "#242424",
  \ 235: "#313131",
  \ 236: "#3f3f3f",
  \ 237: "#4a4a4a",
  \ 238: "#565656",
  \ 239: "#606060",
  \ 240: "#6b6b6b",
  \ 241: "#6b6b6b",
  \ 242: "#7f7f7f",
  \ 23:  "#0d7171",
  \ 24:  "#0f7396",
  \ 252: "#d8d8d8",
  \ 30:  "#169697",
  \ 31:  "#1798ba",
  \ 38:  "#1fbcdc",
  \ 52:  "#720a06",
  \ 65:  "#719573",
  \ 73:  "#71bbbb",
  \ 74:  "#72bddc",
  \ 88:  "#98130c",
  \ 89:  "#982171",
  \ 95:  "#987372"
\ }

function! s:hi(item, fg, bg)
  if empty(a:bg)
    execute printf("highlight %s ctermfg=%s guifg=%s", a:item, a:fg, s:rgb_map[a:fg])
  elseif empty(a:fg)
    execute printf("highlight %s ctermbg=%s guibg=%s", a:item, a:bg, s:rgb_map[a:bg])
  else
    execute printf("highlight %s ctermfg=%s guifg=%s ctermbg=%s guibg=%s", a:item, a:fg, s:rgb_map[a:fg], a:bg, s:rgb_map[a:bg])
  endif
endfunction

if !exists('g:seoul256_background')
  let g:seoul256_background = 237
end

if !has('gui_running')
  set t_Co=256
end

set background=dark
hi clear

call s:hi('LineNr', 101, g:seoul256_background + 1)
call s:hi('Visual', '', 23)
call s:hi('VisualNOS', '', 23)

call s:hi('Normal', 252, g:seoul256_background)
call s:hi('Comment', 65, '')
call s:hi('Number', 221, '')
call s:hi('Float', 221, '')
call s:hi('Boolean', 168, '')
call s:hi('String', 74, '')
call s:hi('Constant', 73, '')
call s:hi('Character', 168, '')
call s:hi('Delimiter', 136, '')
call s:hi('StringDelimiter', 136, '')
call s:hi('Statement', 138, '')
" case, default, etc.
" hi Label ctermfg=

" if else end
call s:hi('Conditional', 110, '')

" while end
call s:hi('Repeat', 216, '')
call s:hi('Todo', 161, 234)
call s:hi('Function', 187, '')

" Macros
call s:hi('Define', 173, '')
call s:hi('Macro', 173, '')
call s:hi('Include', 173, '')
call s:hi('PreCondit', 173, '')


" #!
call s:hi('PreProc', 143, '')

" @abc
call s:hi('Identifier', 218, '')

" AAA Abc
call s:hi('Type', 179, '')

" + - * / <<
call s:hi('Operator', 110, '')

" super yield
call s:hi('Keyword', 168, '')

" raise
call s:hi('Exception', 161, '')
"
" hi StorageClass ctermfg=
call s:hi('Structure', 116, '')
" hi Typedef ctermfg=

call s:hi('Error', '', 168)
call s:hi('ErrorMsg', '', 168)
call s:hi('Underlined', 181, '')

" set textwidth=80
" set colorcolumn=+1
call s:hi('ColorColumn', '', g:seoul256_background - 1)

" GVIM only
" hi Cursor ctermfg=
" hi CursorIM ctermfg=

" set cursorline cursorcolumn
call s:hi('CursorLine', '', g:seoul256_background - 1)
call s:hi('CursorLineNr', 131, g:seoul256_background - 1)
call s:hi('CursorColumn', '', g:seoul256_background)

call s:hi('Directory', 187, '')

call s:hi('DiffAdd', 'NONE', 24)
call s:hi('DiffDelete', 'NONE', 95)
call s:hi('DiffChange', 'NONE', 23)
call s:hi('DiffText', 'NONE', 52)

call s:hi('VertSplit', g:seoul256_background - 2, g:seoul256_background - 2)
call s:hi('Folded', 101, g:seoul256_background + 1)

" set foldcolumn=1
call s:hi('FoldColumn', 31, g:seoul256_background + 1)

call s:hi('MatchParen', 232, '')

" -- INSERT --
call s:hi('ModeMsg', 173, '')

" let &showbreak = '> '
call s:hi('NonText', 101, '')

call s:hi('MoreMsg', 173, '')

" Popup menu
call s:hi('Pmenu', g:seoul256_background + 1, 224)
call s:hi('PmenuSel', 252, 89)
call s:hi('PmenuSbar', '', 65)
call s:hi('PmenuThumb', '', 23)

call s:hi('Search', 252, 24)
call s:hi('IncSearch', 220, g:seoul256_background + 1)

" String delimiter, interpolation
call s:hi('Special', 209, '')
" hi SpecialChar ctermfg=
" hi SpecialComment ctermfg=
" hi Tag ctermfg=
" hi Debug ctermfg=

" :map
call s:hi('SpecialKey', 73, '')

" TODO: spell check
call s:hi('SpellBad', 252, 95)
call s:hi('SpellCap', 252, 95)
call s:hi('SpellLocal', 252, 95)
call s:hi('SpellRare', 252, 95)

"
call s:hi('StatusLine', 95, 187)
call s:hi('StatusLineNC', g:seoul256_background + 2, 187)
call s:hi('TabLineFill', g:seoul256_background - 1, '')
call s:hi('TabLineSel', 179, 23)
call s:hi('TabLine', g:seoul256_background - 1, g:seoul256_background + 1)
call s:hi('WildMenu', 95, 184)

" :set all
call s:hi('Title', 218, '')

" TODO
call s:hi('Question', 218, '')

" Search hit bottom
call s:hi('WarningMsg', 187, '')

"""""""""""""""""""""""""""""""""""""""""""""""""
" Plugins
"""""""""""""""""""""""""""""""""""""""""""""""""

" indentLine
" ----------
call s:hi('Conceal', g:seoul256_background + 1, g:seoul256_background)
call s:hi('Ignore', g:seoul256_background + 1, g:seoul256_background)

" vim-scroll-position
" -------------------
call s:hi('SignColumn', 173, g:seoul256_background)
call s:hi('ScrollPositionMarker', 173, g:seoul256_background + 1)
call s:hi('ScrollPositionVisualBegin', 173, g:seoul256_background + 1)
call s:hi('ScrollPositionVisualMiddle', 173, g:seoul256_background + 1)
call s:hi('ScrollPositionVisualEnd', 173, g:seoul256_background + 1)
call s:hi('ScrollPositionVisualOverlap', 173, g:seoul256_background + 1)
call s:hi('ScrollPositionChange', 173, g:seoul256_background + 1)
call s:hi('ScrollPositionJump', 173, g:seoul256_background + 1)

" vim-gitgutter
" -------------
call s:hi('GitGutterAdd', 38, '')
call s:hi('GitGutterChange', 65, '')
call s:hi('GitGutterDelete', 161, '')
call s:hi('GitGutterChangeDelete', 168, '')

" vim-ruby
" --------
" " rubySymbol
let ruby_operators = 1
call s:hi('rubyClass', 31, '')
" call s:hi('rubyInstanceVariable', 189, '')
call s:hi('rubyRegexp', 186, '')
call s:hi('rubyRegexpDelimiter', 168, '')
call s:hi('rubyArrayDelimiter', 38, '')
call s:hi('rubyBlockParameterList', 186, '')
call s:hi('rubyCurlyBlockDelimiter', 144, '')

" ARGV $stdout
call s:hi('rubyPredefinedIdentifier', 230, '')
" hi rubyRegexpSpecial

hi CursorLine cterm=NONE
hi CursorLineNr cterm=NONE
