set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'patstockwell/vim-monokai-tasty'

call vundle#end()
filetype plugin indent on

colorscheme vim-monokai-tasty
set t_Co=256

filetype indent plugin on

set statusline+=%F
set ignorecase
set smartcase
set autoindent
set number
set clipboard=unnamed
syntax on
set backspace=indent,eol,start
set nostartofline
set ruler
set cursorline
hi CursorLine term=bold cterm=bold guibg=Grey40 ctermbg=234 ctermfg=NONE

set shiftwidth=4
set softtabstop=4
set expandtab

highlight ExtraWhitespace ctermbg=blue guibg=blue
match ExtraWhitespace /\s\+$/

autocmd VimEnter * wincmd p
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
