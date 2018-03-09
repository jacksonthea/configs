" To make this work:
"
" 1. install vim-pathogen: 
"    https://github.com/tpope/vim-pathogen
" 2. Then install nerdtree
"    git clone https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree
execute pathogen#infect()

filetype plugin indent on
syntax on

syntax enable "enable syntax processing
set background=dark
" https://github.com/altercation/vim-colors-solarized
let g:solarized_termcolors=256
colorscheme solarized

set number              " show line numbers
set relativenumber      " relative line numbers
set showcmd             " show command in bottom bar
set cursorline          " highlight current line
set ruler

set showmatch           " higlight matching parenthesis

set wildmenu            " visual autocomplete for command menu

set lazyredraw          " redraw only when we need to.

" searching
set incsearch           " search as characters are entered
set hlsearch            " highlight matches
set ignorecase		"ignore case
set smartcase

" tabs and spaces
set tabstop=2		"number of cisual spaces per tab
set softtabstop=2 	"number of tabs when editing
set expandtab	 	"tabs are spaces
set shiftwidth=2 "indents are 2 spaces

set backspace=2 " make backspace work like most other apps

set mouse=a
set ttymouse=sgr

" iTerm 2 change cursor shape
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

" turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>

" Automatically open NERDTree and cursor in other window
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p

" quit NERDTree if it's the only buffer left
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
