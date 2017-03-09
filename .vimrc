
" Use Vim settings, rather then Vi settings (much better!).  " This must be first, because it changes other options as a side effect.
set nocompatible

execute pathogen#infect()

set backspace=indent,eol,start
set history=50      " keep 50 lines of command line history
set ruler           " show the cursor position all the time
set showcmd         " display incomplete commands
set cursorline      " highlight current line
set incsearch       " do incremental searching

set expandtab
set autoindent
set cinkeys-=0#     " to stop moving to column 0 after pressing hash
filetype plugin indent on
set tabstop=4
set smarttab
set shiftwidth=4
syntax on
set hlsearch
set wrap
set ignorecase
set showbreak=+++\ 
set wildmenu    " Show a menu of possible completions
set wildmode=longest:full,full
set scrolloff=1
set sidescrolloff=5
set laststatus=2
set showtabline=2
set nrformats-=octal
set ttimeout
set ttimeoutlen=100
set display+=lastline
set nobackup

"set runtimepath^=~/.vim/bundle/ctrlp.vim
"set runtimepath^=~/.vim/bundle/nerdtree

if &encoding ==# 'latin1' && has('gui_running')
    set encoding=utf-8
endif

if &listchars ==# 'eol:$'
  set listchars=tab:>\ ,trail:-,extends:>,precedes:<,nbsp:+
endif

set formatoptions+=j " Delete comment character when joining commented lines

" The Rust filetype detectino will automatically set indentation and textwidth
" settings to conform to style conventions of the rust standard library (i.e.
" use 4 spaces for indents and sets 'textwidth' to 99). We don't want that.
"let g:rust_recommended_style = 0

colorscheme commentsdark
" Highlight column 80
"set colorcolumn=80

" For all text files set 'textwidth' to 100 characters.
autocmd FileType text setlocal textwidth=100
autocmd FileType c setlocal textwidth=100
autocmd FileType h setlocal textwidth=100
autocmd FileType cpp setlocal textwidth=100
autocmd FileType markdown setlocal linebreak

"set textwidth=100
"autocmd FileType cfg setlocal textwidth=0

function! s:rust_build()
    silent make build
    cwindow
endfunction
command! RustBuild call s:rust_build()

" Remap leader to comma
let mapleader = ","

" Type 'jk' while in insert mode to escape to normal mode.
imap jk <Esc>

" Use ,l to clear the highlighting of :set hlsearch.
nnoremap <silent><leader>l :nohlsearch<cr>

nnoremap <silent><leader>r :!cargo run<cr>
nnoremap <silent><C-q> :cclose<cr>
"inoremap <silent><leader>b <ESC>:Build<cr>
inoremap <silent><C-q> <ESC>:cclose<cr>
nnoremap <silent><A-n> :cn<cr>
inoremap <silent><A-n> <ESC>:cn<cr>
vnoremap <silent><A-n> <ESC>:cn<cr>
nnoremap <silent><C-A-n> :cp<cr>
inoremap <silent><C-A-n> <ESC>:cp<cr>
vnoremap <silent><C-A-n> <ESC>:cp<cr>

" Open new split panes to right and bottom, which feels more natural
set splitbelow
set splitright

" Quicker window movement
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

function FullscreenSplit()
    simalt ~x
    vnew
    wincmd =
endfunction

function SplitColumns()
    set columns=161
    vsplit
endfunction

function UnsplitColumns()
    close
    set columns=80
endfunction

map <Leader>f :call FullscreenSplit()<cr>
map <Leader>= :call SplitColumns()<cr>
map <Leader>- :call UnsplitColumns()<cr>

let g:ruby_path=':C:\Ruby200-x64\bin'

" Helper function to allow automatic resizing with NERDTree
function NERDTreeToggleWithSize()
    if !exists("g:NERDTreeIsOpen")
        let g:NERDTreeIsOpen = 1
        let &columns=&columns + g:NERDTreeWinSize + 1
        NERDTreeToggle
    else
        unlet g:NERDTreeIsOpen
        NERDTreeToggle
        let &columns=&columns - g:NERDTreeWinSize - 1
    end
endfunction

" Now map NERDTree to comma comma
"map <Leader>, :call NERDTreeToggleWithSize()<cr>

" Close Vim if the only window left is NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

let Tlist_WinWidth=50
"map <F4> :TlistToggle<cr>
map <F8> :silent !ctags -R --fields=+S --extra=+f .<cr>
 
" Highlight trailing spaces
:highlight ExtraWhitespace ctermbg=48 guibg=lightgreen
:match ExtraWhitespace /\s\+$/
:autocmd ColorScheme * highlight ExtraWhitespace ctermbg=48 guibg=lightgreen

" open the selection in a browser so it can be copied as rich text
function! OpenInChrome() range
    TOhtml
    w
    silent !start "C:\Users\Nick\AppData\Local\Google\Chrome\Application\chrome.exe" "%:p"
endfunction
noremap <F7> :call OpenInChrome()<CR>


