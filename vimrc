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
nnoremap <silent> <esc> :nohlsearch<Bar>:echo<CR>

" toggle last file with leader double tab
nnoremap <leader>. :e#<CR>

" visual settings
colorscheme sialoquent
set colorcolumn=90
set number
set showcmd
set showmatch

" key bindings
let mapleader=","
imap kj <esc>

" command-t
"map <leader><leader>

" nerdtree
nmap <leader>m :NERDTreeToggle<CR>
nmap <leader>j :NERDTreeFind<CR>
let NERDTreeShowHidden=1
let NERDTreeIgnore=['\.DS_Store', '\~$', '\.swp', '\.swo']

" nerdtree: open when launched with a directory, or no files
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

" auto reload changes to vimrc
augroup myvimrc
    au!
    au BufWritePost .vimrc,_vimrc,vimrc,.gvimrc,_gvimrc,gvimrc so $MYVIMRC | if has('gui_running') | so $MYGVIMRC | endif
augroup END

