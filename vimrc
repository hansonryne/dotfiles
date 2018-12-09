set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=$HOME/.vim/bundle/Vundle.vim
call vundle#begin('$HOME/.vim/bundle')
"
" " let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
"
" " The following are examples of different formats supported.
" " plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'

" Functional Plugins
Plugin 'tpope/vim-surround'
Plugin 'kien/ctrlp.vim'
Plugin 'ervandew/supertab'
Plugin 'rking/ag.vim'

" Colorschemes
Plugin 'jpo/vim-railscasts-theme'
Plugin 'sjl/badwolf'
Plugin 'altercation/vim-colors-solarized'
"
" " All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" " To ignore plugin indent changes, instead use:
" "filetype plugin on

" SYNTAX
syntax enable

" COLORS
colorscheme badwolf

" TABS
set tabstop=2
set softtabstop=2
set expandtab

" LINE NUMBERS
set number relativenumber

" Leader to space
let mapleader = " "

" jj exits insert mode
imap jj <esc>

" SEARCH
set incsearch
set hlsearch
set ignorecase
set smartcase
nnoremap <leader><CR> :nohlsearch<CR>

" MOVEMENT
"" Don't skip wrapped lines
nnoremap j gj
nnoremap k gk

" highlight last inserted text
nnoremap gV `[v`]

" Save with leader W
nnoremap <leader>W :w<CR>

" Speed up CtrlP with Silver Searcher (Ag)
let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
