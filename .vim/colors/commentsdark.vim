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

" syntax highlighting groups
"
hi Normal         guifg=#d2d4d5 guibg=#202022 gui=NONE    ctermfg=251      ctermbg=black    cterm=NONE

hi Comment        guifg=#afd7af guibg=bg      gui=NONE    ctermfg=48       ctermbg=bg       cterm=NONE
hi CursorLine                   guibg=#3a3a3d gui=NONE                     ctermbg=237      cterm=NONE
hi CursorLineNr   guifg=fg      guibg=#3a3a3d gui=NONE    ctermfg=fg       ctermbg=237      cterm=NONE
hi LineNr         guifg=#a2a4a5 guibg=bg      gui=NONE    ctermfg=249      ctermbg=bg       cterm=NONE
hi NonText        guifg=#a2a4a5 guibg=bg      gui=NONE    ctermfg=249      ctermbg=bg       cterm=NONE
hi Pmenu          guifg=fg      guibg=#222222 gui=NONE    ctermfg=darkgray ctermbg=black    cterm=NONE
hi PmenuSel       guifg=fg      guibg=#222222 gui=reverse ctermfg=darkgray ctermbg=black    cterm=reverse
hi Search         guifg=#adf7af guibg=bg      gui=reverse ctermfg=48       ctermbg=bg       cterm=reverse
hi SpecialComment guifg=#afd7af guibg=bg      gui=NONE    ctermfg=48       ctermbg=bg       cterm=NONE
hi Todo           guifg=#dd2222 guibg=bg      gui=NONE    ctermfg=red      ctermbg=bg       cterm=NONE
hi MatchParen     guifg=#afd7af guibg=bg      gui=reverse ctermfg=48       ctermbg=bg       cterm=reverse

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
