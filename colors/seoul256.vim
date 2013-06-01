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
  \ 16: "#000000", 17: "#0C0077", 18: "#14009F", 19: "#1B00C5", 20: "#2200E8",
  \ 21: "#2900FF", 22: "#007600", 23: "#007475", 24: "#00739E", 25: "#0071C3",
  \ 26: "#006EE7", 27: "#006BFF", 28: "#009E00", 29: "#009D72", 30: "#009C9C",
  \ 31: "#009AC2", 32: "#0098E6", 33: "#0096FF", 34: "#00C300", 35: "#00C26F",
  \ 36: "#00C19A", 37: "#00C0C1", 38: "#00BFE5", 39: "#00BDFF", 40: "#00E600",
  \ 41: "#00E56B", 42: "#00E497", 43: "#00E3BF", 44: "#00E2E3", 45: "#00E1FF",
  \ 46: "#00FF00", 47: "#00FF66", 48: "#00FF94", 49: "#00FFBC", 50: "#00FFE1",
  \ 51: "#00FFFF", 52: "#7F0000", 53: "#800075", 54: "#81009E", 55: "#8200C3",
  \ 56: "#8300E7", 57: "#8500FF", 58: "#717400", 59: "#727272", 60: "#73709C",
  \ 61: "#746EC2", 62: "#766CE6", 63: "#7868FF", 64: "#629C00", 65: "#639B6F",
  \ 66: "#649A9A", 67: "#6698C1", 68: "#6897E5", 69: "#6A95FF", 70: "#49C200",
  \ 71: "#4BC16C", 72: "#4DC098", 73: "#4FBFBF", 74: "#52BDE3", 75: "#54BCFF",
  \ 76: "#07E500", 77: "#12E468", 78: "#18E395", 79: "#1EE2BD", 80: "#25E1E2",
  \ 81: "#2BE0FF", 82: "#00FF00", 83: "#00FF63", 84: "#00FF92", 85: "#00FFBB",
  \ 86: "#00FFE0", 87: "#00FFFF", 88: "#AA0000", 89: "#AA0072", 90: "#AB009C",
  \ 91: "#AC00C2", 92: "#AD00E6", 93: "#AE00FF", 94: "#A07200", 95: "#A1706F",
  \ 96: "#A16E9A", 97: "#A26CC1", 98: "#A369E5", 99: "#A566FF", 100: "#979B00",
  \ 101: "#989A6D", 102: "#989898", 103: "#9997BF", 104: "#9A95E4", 105: "#9C93FF",
  \ 106: "#8AC000", 107: "#8BC06A", 108: "#8CBF96", 109: "#8DBEBE", 110: "#8EBCE2",
  \ 111: "#90BBFF", 112: "#79E400", 113: "#7AE365", 114: "#7BE294", 115: "#7CE1BC",
  \ 116: "#7DE0E1", 117: "#7FDFFF", 118: "#5FFF00", 119: "#60FF60", 120: "#62FF90",
  \ 121: "#63FFBA", 122: "#65FFDF", 123: "#67FFFF", 124: "#D10000", 125: "#D2006F",
  \ 126: "#D2009A", 127: "#D300C1", 128: "#D300E5", 129: "#D400FF", 130: "#CA6F00",
  \ 131: "#CA6D6C", 132: "#CB6B98", 133: "#CC69BF", 134: "#CC66E3", 135: "#CD63FF",
  \ 136: "#C39900", 137: "#C4986A", 138: "#C49796", 139: "#C595BE", 140: "#C693E2",
  \ 141: "#C791FF", 142: "#BABF00", 143: "#BBBE66", 144: "#BCBD94", 145: "#BCBCBC",
  \ 146: "#BDBBE1", 147: "#BEB9FF", 148: "#AFE300", 149: "#B0E262", 150: "#B0E191",
  \ 151: "#B1E0BA", 152: "#B2DFE0", 153: "#B3DEFF", 154: "#A0FF00", 155: "#A1FF5C",
  \ 156: "#A2FF8E", 157: "#A2FFB8", 158: "#A3FFDE", 159: "#A5FFFF", 160: "#F60000",
  \ 161: "#F7006B", 162: "#F70097", 163: "#F800BF", 164: "#F800E3", 165: "#F900FF",
  \ 166: "#F16C00", 167: "#F16A68", 168: "#F16895", 169: "#F265BD", 170: "#F363E2",
  \ 171: "#F35FFF", 172: "#EB9700", 173: "#EC9565", 174: "#EC9494", 175: "#ED93BC",
  \ 176: "#ED91E1", 177: "#EE8FFF", 178: "#E4BD00", 179: "#E5BC62", 180: "#E5BC91",
  \ 181: "#E6BBBA", 182: "#E7B9E0", 183: "#E7B8FF", 184: "#DCE100", 185: "#DCE15D",
  \ 186: "#DDE08F", 187: "#DDDFB8", 188: "#DEDEDE", 189: "#DFDDFF", 190: "#D1FF00",
  \ 191: "#D2FF57", 192: "#D2FF8B", 193: "#D3FFB6", 194: "#D4FFDC", 195: "#D4FFFF",
  \ 196: "#FF0000", 197: "#FF0066", 198: "#FF0094", 199: "#FF00BC", 200: "#FF00E1",
  \ 201: "#FF00FF", 202: "#FF6700", 203: "#FF6563", 204: "#FF6392", 205: "#FF61BB",
  \ 206: "#FF5EE0", 207: "#FF5AFF", 208: "#FF9400", 209: "#FF9360", 210: "#FF9291",
  \ 211: "#FF90BA", 212: "#FF8EDF", 213: "#FF8CFF", 214: "#FFBB00", 215: "#FFBA5C",
  \ 216: "#FFBA8E", 217: "#FFB9B8", 218: "#FFB7DE", 219: "#FFB6FF", 220: "#FFE000",
  \ 221: "#FFDF57", 222: "#FFDE8B", 223: "#FFDDB6", 224: "#FFDCDC", 225: "#FFDBFF",
  \ 226: "#FCFF00", 227: "#FCFF51", 228: "#FDFF88", 229: "#FDFFB4", 230: "#FEFFDA",
  \ 231: "#FEFEFE", 232: "#060606", 233: "#171717", 234: "#252525", 235: "#323232",
  \ 236: "#3F3F3F", 237: "#4A4A4A", 238: "#565656", 239: "#606060", 240: "#6B6B6B",
  \ 241: "#757575", 242: "#7F7F7F", 243: "#888888", 244: "#929292", 245: "#9B9B9B",
  \ 246: "#A4A4A4", 247: "#ADADAD", 248: "#B6B6B6", 249: "#BFBFBF", 250: "#C7C7C7",
  \ 251: "#D0D0D0", 252: "#D8D8D8", 253: "#E0E0E0", 254: "#E9E9E9", 255: "#F1F1F1"
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

if !exists('g:seoul256_background') || g:seoul256_background < 234 || g:seoul256_background > 238
  let s:seoul256_background = 237
else
  let s:seoul256_background = g:seoul256_background
end

if !has('gui_running')
  set t_Co=256
end

set background=dark
hi clear

call s:hi('LineNr', 101, s:seoul256_background + 1)
call s:hi('Visual', '', 23)
call s:hi('VisualNOS', '', 23)

call s:hi('Normal', 252, s:seoul256_background)
call s:hi('Comment', 65, '')
call s:hi('Number', 222, '')
call s:hi('Float', 222, '')
call s:hi('Boolean', 103, '')
call s:hi('String', 109, '')
call s:hi('Constant', 73, '')
call s:hi('Character', 174, '')
call s:hi('Delimiter', 137, '')
call s:hi('StringDelimiter', 137, '')
call s:hi('Statement', 108, '')
" case, default, etc.
" hi Label ctermfg=

" if else end
call s:hi('Conditional', 110, '')

" while end
call s:hi('Repeat', 68, '')
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
call s:hi('Identifier', 217, '')

" AAA Abc
call s:hi('Type', 179, '')

" + - * / <<
call s:hi('Operator', 186, '')

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
call s:hi('ColorColumn', '', s:seoul256_background - 1)

" GVIM only
" hi Cursor ctermfg=
" hi CursorIM ctermfg=

" set cursorline cursorcolumn
call s:hi('CursorLine', '', s:seoul256_background - 1)
call s:hi('CursorLineNr', 131, s:seoul256_background - 1)
call s:hi('CursorColumn', '', s:seoul256_background)

call s:hi('Directory', 187, '')

call s:hi('DiffAdd', 'NONE', 24)
call s:hi('DiffDelete', 'NONE', 95)
call s:hi('DiffChange', 'NONE', 23)
call s:hi('DiffText', 'NONE', 52)

call s:hi('VertSplit', s:seoul256_background - 2, s:seoul256_background - 2)
call s:hi('Folded', 101, s:seoul256_background + 1)

" set foldcolumn=1
call s:hi('FoldColumn', 31, s:seoul256_background + 1)

call s:hi('MatchParen', 232, '')

" -- INSERT --
call s:hi('ModeMsg', 173, '')

" let &showbreak = '> '
call s:hi('NonText', 101, '')

call s:hi('MoreMsg', 173, '')

" Popup menu
call s:hi('Pmenu', s:seoul256_background + 1, 224)
call s:hi('PmenuSel', 252, 89)
call s:hi('PmenuSbar', '', 65)
call s:hi('PmenuThumb', '', 23)

call s:hi('Search', 252, 24)
call s:hi('IncSearch', 220, s:seoul256_background + 1)

" String delimiter, interpolation
call s:hi('Special', 216, '')
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
call s:hi('StatusLineNC', s:seoul256_background + 2, 187)
call s:hi('TabLineFill', s:seoul256_background - 1, '')
call s:hi('TabLineSel', 179, 23)
call s:hi('TabLine', s:seoul256_background - 1, s:seoul256_background + 1)
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
call s:hi('Conceal', s:seoul256_background + 1, s:seoul256_background)
call s:hi('Ignore', s:seoul256_background + 1, s:seoul256_background)
let g:indentLine_color_term = s:seoul256_background + 1
let g:indentLine_color_gui  = s:rgb_map[s:seoul256_background + 1]

" vim-scroll-position
" -------------------
call s:hi('SignColumn', 173, s:seoul256_background)
call s:hi('ScrollPositionMarker', 173, s:seoul256_background + 1)
call s:hi('ScrollPositionVisualBegin', 168, s:seoul256_background + 1)
call s:hi('ScrollPositionVisualMiddle', 168, s:seoul256_background + 1)
call s:hi('ScrollPositionVisualEnd', 168, s:seoul256_background + 1)
call s:hi('ScrollPositionVisualOverlap', 168, s:seoul256_background + 1)
call s:hi('ScrollPositionChange', 173, s:seoul256_background + 1)
call s:hi('ScrollPositionJump', 173, s:seoul256_background + 1)

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
call s:hi('rubyArrayDelimiter', 67, '')
call s:hi('rubyBlockParameterList', 186, '')
call s:hi('rubyCurlyBlockDelimiter', 144, '')

" ARGV $stdout
call s:hi('rubyPredefinedIdentifier', 230, '')
" hi rubyRegexpSpecial

hi CursorLine cterm=NONE
hi CursorLineNr cterm=NONE
