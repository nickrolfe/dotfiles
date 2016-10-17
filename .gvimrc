set mousehide		" Hide the mouse when typing text

" Make shift-insert work like in Xterm
map <S-Insert> <MiddleMouse>
map! <S-Insert> <MiddleMouse>

" Switch on syntax highlighting if it wasn't on yet.
if !exists("syntax_on")
syntax on
endif

set showtabline=1
set guifont=Menlo:h18

set columns=80
set lines=48

set background=light
colorscheme comments
set guioptions-=T
"hi ColorColumn guibg=bg guifg=#ff0000 gui=none
