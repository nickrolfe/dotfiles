" cool help screens
" :he group-name
" :he highlight-groups
" :he cterm-colors

" your pick:
set background=dark
hi clear
if exists("syntax_on")
    syntax reset
endif
let g:colors_name="commentsdark"

if (&t_Co == 256)
  let s:text = "251"
  let s:highlight = "48"
  let s:cursor_line = "237"
  let s:pmenu_fg = "darkgray"
  let s:pmenu_sel_fg = "237"
  let s:pmenu_sel_bg = "black"
  let s:nontext = "249"
else
  let s:text = "7""
  let s:highlight = "10"
  let s:cursor_line = "4"
  let s:pmenu_fg = "7"
  let s:pmenu_sel_fg = "0"
  let s:pmenu_sel_bg = "7"
  let s:nontext = "1"
endif
" syntax highlighting groups
"
exe "hi Normal         guifg=#d2d4d5 guibg=#202022 gui=NONE    ctermfg=" .s:text ."     ctermbg=black    cterm=NONE"

exe "hi Comment        guifg=#afd7af guibg=bg      gui=NONE    ctermfg=" .s:highlight ."       ctermbg=bg       cterm=NONE"
exe "hi CursorLine                   guibg=#3a3a3d gui=NONE                     ctermbg=" .s:cursor_line ."      cterm=NONE"
exe "hi CursorLineNr   guifg=fg      guibg=#3a3a3d gui=NONE    ctermfg=fg       ctermbg=" .s:cursor_line ."      cterm=NONE"
exe "hi LineNr         guifg=#a2a4a5 guibg=bg      gui=NONE    ctermfg=" .s:nontext ."      ctermbg=bg       cterm=NONE"
exe "hi NonText        guifg=#a2a4a5 guibg=bg      gui=NONE    ctermfg=" .s:nontext ."      ctermbg=bg       cterm=NONE"
exe "hi Pmenu          guifg=fg      guibg=#222222 gui=NONE    ctermfg=" .s:pmenu_fg ." ctermbg=black    cterm=NONE"
exe "hi PmenuSel       guifg=fg      guibg=#222222 gui=reverse ctermfg=" .s:pmenu_sel_fg ." ctermbg=" . s:pmenu_sel_bg ."    cterm=NONE"
exe "hi Search         guifg=#adf7af guibg=#456345 gui=NONE    ctermfg=" .s:highlight ."       ctermbg=bg       cterm=reverse"
exe "hi SpecialComment guifg=#afd7af guibg=bg      gui=NONE    ctermfg=" .s:highlight ."       ctermbg=bg       cterm=NONE"
hi Todo           guifg=#dd2222 guibg=bg      gui=NONE    ctermfg=red      ctermbg=bg       cterm=NONE
exe "hi MatchParen     guifg=#afd7af guibg=#456345 gui=NONE    ctermfg=" .s:highlight ."       ctermbg=bg       cterm=NONE"

hi Constant       guifg=fg      guibg=bg      gui=NONE    ctermfg=fg       ctermbg=bg       cterm=NONE
hi Identifier     guifg=fg      guibg=bg      gui=NONE    ctermfg=fg       ctermbg=bg       cterm=NONE
hi Statement      guifg=fg      guibg=bg      gui=NONE    ctermfg=fg       ctermbg=bg       cterm=NONE
hi PreProc        guifg=fg      guibg=bg      gui=NONE    ctermfg=fg       ctermbg=bg       cterm=NONE
hi Type           guifg=fg      guibg=bg      gui=NONE    ctermfg=fg       ctermbg=bg       cterm=NONE
hi Special        guifg=fg      guibg=bg      gui=NONE    ctermfg=fg       ctermbg=bg       cterm=NONE
hi Underlined     guifg=fg      guibg=bg      gui=NONE    ctermfg=fg       ctermbg=bg       cterm=NONE
hi Ignore         guifg=fg      guibg=bg      gui=NONE    ctermfg=fg       ctermbg=bg       cterm=NONE
hi Error          guifg=fg      guibg=bg      gui=NONE    ctermfg=fg       ctermbg=bg       cterm=NONE

hi Visual gui=reverse guibg=#202022

"hi Cursor
"hi CursorIM
"hi Directory
"hi DiffAdd
"hi DiffChange
"hi DiffDelete
"hi DiffText
"hi ErrorMsg
"hi VertSplit
"hi Folded
"hi FoldColumn
"hi IncSearch
"hi LineNr
"hi ModeMsg
"hi MoreMsg
"hi NonText
"hi Question
"hi SpecialKey
"hi StatusLine
"hi StatusLineNC
"hi Title
"hi VisualNOS
"hi WarningMsg
"hi WildMenu
"hi Menu
"hi Scrollbar
"hi Tooltip
