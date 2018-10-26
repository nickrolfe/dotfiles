
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
set showtabline=1
set nrformats-=octal
set ttimeout
set ttimeoutlen=100
set display+=lastline
set nobackup
set noswapfile
set updatetime=250
set wildignore=tags,*.pdb,*.exe,*.obj
set diffopt+=vertical
set fileformats=unix,dos

set undofile
if has('win32') || has('win64')
    set undodir=~/vimfiles/undodir
else
    set undodir=~/.vim/undodir
end

let g:airline_theme='minimalist'
let g:airline_extensions = ['branch']

if &encoding ==# 'latin1' && has('gui_running')
    set encoding=utf-8
endif

if &listchars ==# 'eol:$'
  set listchars=tab:>\ ,trail:-,extends:>,precedes:<,nbsp:+
endif

set formatoptions+=j " Delete comment character when joining commented lines

colorscheme commentsdark

" For all text files set 'textwidth' to 80 characters.
autocmd FileType text setlocal textwidth=80
autocmd FileType c setlocal textwidth=80
autocmd FileType h setlocal textwidth=80
autocmd FileType cpp setlocal textwidth=80
autocmd FileType markdown setlocal linebreak

" Remap leader to comma
let mapleader = ","

" Type 'jk' while in insert mode to escape to normal mode.
imap jk <Esc>

" Use ,l to clear the highlighting of :set hlsearch.
nnoremap <silent><leader>l :nohlsearch<cr>

nnoremap <silent><leader>q :cclose<cr>
nnoremap <silent><leader>n :cnext<cr>
nnoremap <silent><leader>N :cprevious<cr>

" FZF shortcuts
nnoremap <leader>o :GFiles<cr>
nnoremap <leader>p :Files<cr>

" The Silver Searcher
if executable('ag')
  set grepprg=ag\ --nogroup\ --nocolor
endif

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

map <Leader>f :call FullscreenSplit()<cr>

"map <F8> :silent !ctags -R --fields=+S --extra=+f .<cr>
map <Leader>t :TagbarToggle<CR>

" Highlight trailing spaces (like the one on this line) 
:highlight ExtraWhitespace ctermbg=48 guibg=#ff0087
":match ExtraWhitespace /\s\+$/
:match ExtraWhitespace /\s\+\%#\@<!$/
:autocmd ColorScheme * highlight ExtraWhitespace ctermbg=48 guibg=#ff0087
:au InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
:au InsertLeave * match ExtraWhitespace /\s\+$/
