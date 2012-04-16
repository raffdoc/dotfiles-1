call pathogen#infect()
call pathogen#helptags()

" Basic config
let mapleader=","
set textwidth=80
set nocp
set nu
set bs=indent,eol,start
syntax on

" Tabs and indent
set expandtab
set shiftwidth=4
set tabstop=4
set smarttab
set wrap
set ai "Autoindent
set ai "Smart indent

" Enable filetype plugin
filetype plugin on
filetype indent on

" Auto change the directory to the current file I'm working on
autocmd BufEnter * lcd %:p:h

" Set auto-read when file is changed
set autoread

" Lines of history to remember
set history=500

" Always show current position
set ruler

" Show relative line number
set relativenumber

" Ignore case when searching
set ignorecase
set smartcase

" Highlight search terms
set hlsearch

" Inceremental search
set incsearch

" Show matchin braces
set showmatch

" Set font
set gfn=Inconsolata:h14

if has("gui_running")
  set guioptions-=T "Hide the fucking toolbar
  set background=dark
  colorscheme ir_black
else
  set background=dark
endif

" Turn off backups
set nobackup
set nowb
set noswapfile

" Turn on wildmenu
set wildmenu
set wildmode=list:longest,full

" Map :Ack to leader key
nnoremap <leader>a :Ack
