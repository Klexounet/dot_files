" set UTF-8 encoding
" reminiz => rc19
set enc=utf-8
set fenc=utf-8
set termencoding=utf-8
" disable vi compatibility (emulation of old bugs)
set nocompatible
" use indentation of previous line
set autoindent
" use intelligent indentation for C
set smartindent
" configure tabwidth and insert spaces instead of tabs
set tabstop=4 " tab width is 4 spaces
set expandtab " expand tabs to spaces
set softtabstop=4
set shiftwidth=4 " indent also with 4 spaces
filetype indent on

" wrap lines at 120 chars. 80 is somewhat antiquated with nowadays displays.
"set textwidth=120
set colorcolumn=120
" turn syntax highlighting on
set t_Co=256
syntax on
" turn line numbers on
set number
" highlight matching braces
set showmatch
" intelligent comments
set comments=sl:/*,mb:\ *,elx:\ */
 
" Highlight search pattern where found
set hlsearch
" Start searching on the first key stroke
set incsearch

colorscheme molokai
