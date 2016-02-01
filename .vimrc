set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Plugin 'gmarik/vundle'
Plugin 'altercation/vim-colors-solarized'
Plugin 'morhetz/gruvbox'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'chriskempson/base16-vim'

filetype plugin indent on

set number

" Theme
syntax enable
set t_Co=256
colorscheme OceanicNext
set background=dark

let mapleader = ','

nmap <leader>w  :w<cr>
nmap <leader>q  :q<cr>
nmap <leader>wq  :wq<cr>

set history=700

set autoread

set ruler
set wildmenu
set hlsearch
set list
set listchars=trail:·

set encoding=utf8

set ffs=unix,dos,mac

set nobackup
set nowb
set noswapfile

set expandtab

set expandtab
set shiftwidth=2
set tabstop=2

set shell=bash

set cc=80

set mouse=a

autocmd BufWritePre * :%s/\s\+$//e
