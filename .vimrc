set nocompatible

filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#rc()

Plugin 'VundleVim/Vundle.vim'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-airline/vim-airline'
Plugin 'tpope/vim-fugitive'
Plugin 'kien/ctrlp.vim'
Plugin 'digitaltoad/vim-pug'
Plugin 'vim-scripts/loremipsum'

filetype plugin indent on

" Theme
syntax enable
set background=dark
" cd ~/.vim/colors
" wget https://raw.githubusercontent.com/nanotech/jellybeans.vim/master/colors/jellybeans.vim
colorscheme jellybeans

let mapleader='\'

noremap <leader>w  :w!<cr>
noremap <leader>q  :q!<cr>
noremap <leader>wq  :wq<cr>
map <leader>s :source ~/.vimrc<CR>

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

" set mouse=a

let g:EditorConfig_exec_path = '/usr/local/bin/editorconfig'
let g:EditorConfig_core_mode = 'external_command'
" let g:EditorConfig_verbose = 1

set backspace=eol,start,indent
set whichwrap+=<,>,h,l

set nostartofline

set title

set showcmd

set cursorline

let g:PreserveNoEOL_Function = function('PreserveNoEOL#Python#Preserve')

set clipboard=unnamed

" Sane indenting
vnoremap < <gv
vnoremap > >gv

filetype plugin on
filetype indent on

nmap <S-Enter> O<Esc>
nmap <CR> o<Esc>

set laststatus=2
set timeoutlen=50

noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

set relativenumber

function! NumberToggle()
  if(&relativenumber == 1)
    set number
    set norelativenumber
  else
    set relativenumber
    set nonumber
  endif
endfunc

nnoremap <C-n> :call NumberToggle()<cr>

map <BS> gT
map <Tab> gt

:noremap % v%

set autochdir
execute pathogen#infect()
call pathogen#helptags()

call plug#begin('~/.vim/plugged')
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'elzr/vim-json'
Plug 'https://github.com/heavenshell/vim-jsdoc'
Plug 'https://github.com/Valloric/YouCompleteMe'
Plug 'https://github.com/ternjs/tern_for_vim'
Plug 'https://github.com/ternjs/tern_for_vim'
Plug 'tpope/vim-surround'
Plug 'https://github.com/vim-syntastic/syntastic'
Plug 'mtscout6/syntastic-local-eslint.vim'
call plug#end()

let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1

let g:jsx_ext_required = 0

autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS

let g:vim_json_syntax_conceal = 0

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_javascript_checkers = []
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
