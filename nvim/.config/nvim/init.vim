call plug#begin('~/.local/share/nvim/plugged')

Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'			" manage surrounding stuff
Plug 'tpope/vim-fugitive'			" git
Plug 'morhetz/gruvbox'				" theme
Plug 'bling/vim-airline'			" status line
Plug 'myusuf3/numbers.vim'			" smart number toggle
Plug 'airblade/vim-gitgutter'			" show git diffs
Plug 'bronson/vim-trailing-whitespace'		" show trailing spaces
Plug 'jiangmiao/auto-pairs'			" spawn matched brackets / quotes
Plug 'jistr/vim-nerdtree-tabs'			" file browser tabs
Plug 'klen/python-mode'                     	" python stuff
Plug 'scrooloose/syntastic'			" syntax check
Plug 'scrooloose/nerdtree'			" file browser
Plug 'scrooloose/nerdcommenter'			" comments
Plug 'yggdroot/indentline'
Plug 'godlygeek/tabular'			" format, tables
Plug 'matze/vim-move'				" move lines up/down
Plug 'valloric/youcompleteme'			" completion sugestions
"Plug 'sheerun/vim-polyglot'			" lang pack

call plug#end()

filetype on
filetype plugin indent on
filetype plugin on
syntax on

set shiftwidth=4
set softtabstop=4
set number
set numberwidth=3
set wrap
set linebreak
set smartindent
set title
set hidden
set path=$PWD/**
set hlsearch
set magic
set ignorecase
set smartcase
set showmatch
set cursorline
set ttyfast
set nobackup
set noswapfile
set whichwrap=b,s,<,>,[,]

autocmd BufWritePre * :%s/\s\+$//e
autocmd FileType java setlocal omnifunc=javacomplete#Complete

" airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_detect_paste=1 " Show PASTE if in paste mode
let g:airline_theme='gruvbox'
let g:airline_powerline_fonts=1
let g:gruvbox_contrast_dark='medium'
colorscheme gruvbox
set background=dark
set laststatus=2
set nomodeline
set noshowmode

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
