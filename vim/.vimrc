" ~/.vimrc

" General settings
set nocompatible
set encoding=utf-8
set history=1000
set undolevels=1000

" UI
set number
set relativenumber
set ruler
set showcmd
set showmatch
set cursorline
set laststatus=2

" Search
set hlsearch
set incsearch
set ignorecase
set smartcase

" Indentation
set autoindent
set smartindent
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4

" Wrapping
set wrap
set linebreak

" File handling
set nobackup
set noswapfile
set autoread

" Syntax highlighting
syntax enable
filetype plugin indent on

" Colors
set background=dark

" Clipboard
set clipboard=unnamedplus

" Leader key
let mapleader = ","

" Key mappings
nnoremap <leader>w :w<CR>
nnoremap <leader>q :q<CR>
nnoremap <leader>/ :nohlsearch<CR>

" Navigate split windows
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
