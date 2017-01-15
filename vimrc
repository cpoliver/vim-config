" autoload plugins
execute pathogen#infect()

" syntax highlighting by filetype
filetype on
syntax on

" keep more in memory
set hidden
set history=100

" indentation
filetype indent on
set nowrap
set tabstop=2
set shiftwidth=2
set expandtab
set smartindent
set autoindent

" trim whitespace on save
autocmd BufWritePre * :%s/\s\+$//e

" highlight in search, cancel with esc
set hlsearch
nnoremap <silent> <Esc> :nohlsearch<Bar>:echo<CR>

" toggle last file with leader double tab
nnoremap <Leader><Leader> :e#<CR>

" visual settings
colorscheme sialoquent
set colorcolumn=90
set number
set showcmd
set showmatch

" key bindings
let mapleader=","

" auto reload changes to vimrc
augroup myvimrc
    au!
    au BufWritePost .vimrc,_vimrc,vimrc,.gvimrc,_gvimrc,gvimrc so $MYVIMRC | if has('gui_running') | so $MYGVIMRC | endif
augroup END

