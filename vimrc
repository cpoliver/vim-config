" autoload plugins
execute pathogen#infect()

" load arpeggio
execute arpeggio#load()

" default buffer copies to clipboard
set clipboard=unnamed

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
nnoremap <silent> <esc> :nohlsearch<Bar>:echo<CR>

" toggle last file with leader double tap
nnoremap <leader>. :e#<CR>

" visual settings
set background=dark
colorscheme sialoquent
set colorcolumn=90
set number
set relativenumber
set showcmd
set showmatch
let g:gitgutter_sign_column_always=1

" key bindings
let mapleader=","

Arpeggio imap kj <esc>
Arpeggio xnoremap kj <esc>

" nerdtree
nmap <leader>m :NERDTreeToggle<CR>
nmap <leader>j :NERDTreeFind<CR>
let NERDTreeShowHidden=1
let NERDTreeIgnore=['\.DS_Store', '\~$', '\.swp', '\.swo']

" auto reload changes to vimrc
augroup myvimrc
    au!
    au BufWritePost .vimrc,_vimrc,vimrc,.gvimrc,_gvimrc,gvimrc so $MYVIMRC | if has('gui_running') | so $MYGVIMRC | endif
augroup END

