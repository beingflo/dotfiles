imap jj <Esc>

" SYNTAGS
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

nnoremap <S-L> :tabnext<CR>
nnoremap <S-H> :tabprevious<CR>

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

set splitbelow
set splitright

nnoremap <C-T> :tabnew 
