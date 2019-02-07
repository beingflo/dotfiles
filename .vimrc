set shell=/bin/bash
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

let g:airline_theme='bubblegum'
let g:airline#extensions#tabline#enabled = 1

imap jj <Esc>

syntax enable

" TABS
set tabstop=4
set softtabstop=4
set expandtab

set cindent
set smarttab
set hlsearch

set backspace=2

" UI
set number
set showcmd
set wildmenu
set lazyredraw
set showmatch

"smart indent when entering insert mode with i on empty lines
function! IndentWithI()
    if len(getline('.')) == 0
        return "\"_cc"
    else
        return "i"
    endif
endfunction
nnoremap <expr> i IndentWithI()

filetype on
filetype indent on

set viminfo='20,<1000,s10,h

nnoremap <S-L> :bn<CR>
nnoremap <S-H> :bp<CR>

map tl :tabmove +1<CR>
map th :tabmove -1<CR>

set splitbelow
set splitright

set nocompatible

augroup resCur
	autocmd!
	autocmd BufReadPost * call setpos(".", getpos("'\""))
augroup END

" SEARCH
set incsearch
set hlsearch

" MOVE
nnoremap j gj
nnoremap k gk

" BACKUP
set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set writebackup

" SPLITS
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

nnoremap <C-V> :sp<CR>
nnoremap <C-B> :vsp<CR>

set hidden

set splitbelow
set splitright

" NERDTREE
map <C-n> :NERDTreeToggle<CR>
let NERDTreeQuitOnOpen=1

" Automatically open Nerdtree if no file provided
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Close window if only nerdtree remains
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
