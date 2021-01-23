set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

Plugin 'dracula/vim', { 'name': 'dracula' }

Plugin 'chrisbra/csv.vim'
Plugin 'vim-syntastic/syntastic'

Plugin 'chrisbra/Colorizer'

call vundle#end()

filetype plugin indent on
syntax on

set relativenumber

set tabstop=4 
set shiftwidth=4             
set autoindent

set expandtab
set smarttab


au BufReadPost *.Xresources set syntax=xdefaults

let g:colorizer_syntax = 1
