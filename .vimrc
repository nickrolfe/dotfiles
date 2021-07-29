set nocompatible

set backspace=indent,eol,start
set history=50      " keep 50 lines of command line history
set ruler           " show the cursor position all the time
set showcmd         " display incomplete commands
if has('gui_running')
    set cursorline  " highlight current line
endif
set incsearch       " do incremental searching

set expandtab
set autoindent
set cinkeys-=0#     " to stop moving to column 0 after pressing hash
filetype plugin indent on
set tabstop=4
set smarttab
set shiftwidth=4
set hlsearch
set wrap
set ignorecase
set smartcase
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
set lazyredraw

"if (has("termguicolors"))
"   let &t_8f = "\<Esc>[38:2:%lu:%lu:%lum"
"   let &t_8b = "\<Esc>[48:2:%lu:%lu:%lum"
"   set termguicolors
"endif
syntax on

" Some customizations for work machines compared with my personal preferences
if !empty($VIM_WORK_STYLE)
    set shiftwidth=2
    set tabstop=8
endif

set undofile
if has('win32') || has('win64')
    set undodir=~/vimfiles/undodir
else
    set undodir=~/.vim/undodir
end

let g:airline_theme='nord'
let g:airline_extensions = ['branch']

if &encoding ==# 'latin1' && has('gui_running')
    set encoding=utf-8
endif

set list
set listchars=tab:>\ 
" here's a tab: 	.

set formatoptions+=j " Delete comment character when joining commented lines

colorscheme nord

" For all text files set 'textwidth' to 80 characters.
autocmd FileType text setlocal textwidth=80
autocmd FileType c setlocal textwidth=80
autocmd FileType h setlocal textwidth=80
autocmd FileType cpp setlocal textwidth=80
autocmd FileType markdown setlocal linebreak

" How to read/write brotli-compressed files
autocmd BufReadPre,FileReadPre     *.br setlocal bin
autocmd BufReadPost,FileReadPost   *.br call gzip#read("brotli -d --rm")
autocmd BufWritePost,FileWritePost *.br call gzip#write("brotli -5 --rm")
autocmd FileAppendPre              *.br call gzip#appre("brotli -d --rm")
autocmd FileAppendPost             *.br call gzip#write("brotli -5 --rm")

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
nnoremap <leader>u :Buffers<cr>

set grepprg=rg\ --vimgrep\ --no-heading\ --smart-case
" The Silver Searcher
"if executable('ag')
"  set grepprg=ag\ --nogroup\ --nocolor
"endif

" Open new split panes to right and bottom, which feels more natural
set splitbelow
set splitright

" Quicker window movement
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

" create a vsplit and move to it
nnoremap <leader>w <C-w>v<C-w>l

map <Leader>t :TagbarToggle<CR>

" Highlight trailing spaces (like the one on this line) 
:highlight ExtraWhitespace ctermbg=18 guibg=#ff0087
":match ExtraWhitespace /\s\+$/
:match ExtraWhitespace /\s\+\%#\@<!$/
:autocmd ColorScheme * highlight ExtraWhitespace ctermbg=18 guibg=#ff0087
:au InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
:au InsertLeave * match ExtraWhitespace /\s\+$/

let g:rustfmt_autosave = 1

set background&
