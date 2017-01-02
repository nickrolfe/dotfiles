set mousehide		" Hide the mouse when typing text

" Make shift-insert work like in Xterm
map <S-Insert> <MiddleMouse>
map! <S-Insert> <MiddleMouse>

" Switch on syntax highlighting if it wasn't on yet.
if !exists("syntax_on")
syntax on
endif

set showtabline=1

set background=light
colorscheme comments
set guioptions-=T

if has('win32') || has('win64')
    set guifont=Consolas:h15
    set renderoptions=type:directx
    set guioptions-=m
else
    set guifont=Menlo:h15
endif

set columns=100
set lines=48
