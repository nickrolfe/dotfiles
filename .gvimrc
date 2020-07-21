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
"colorscheme commentsdark
colorscheme nord

" no toolbar
set guioptions-=T

set listchars=tab:→\ 

if has('win32') || has('win64')
  " in visual mode, Ctrl-X should not cut text but do the standard subtract
  " command
  vunmap <C-X>

  " execute commands in terminal
  set guioptions+=!
end


if has('win32') || has('win64')
    set guifont=Cascadia_Code:h12
    " Disable directx rendering, causing issues with vim-airline rendering
    " https://github.com/vim/vim/issues/1520
    "set renderoptions=type:directx
    set guioptions-=m
else
    set guifont=Inconsolata-dz:h15
endif

set columns=100
set lines=48
