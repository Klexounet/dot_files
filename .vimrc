" set UTF-8 encoding
set enc=utf-8
set fenc=utf-8
set termencoding=utf-8
" disable vi compatibility (emulation of old bugs)
set nocompatible
" use indentation of previous line
set autoindent
" use intelligent indentation for C
set cindent
set cinkeys-=0#
set indentkeys-=0#
" configure tabwidth and insert spaces instead of tabs
set tabstop=4 " tab width is 4 spaces
set expandtab " expand tabs to spaces
set softtabstop=4
set shiftwidth=4 " indent also with 4 spaces
filetype indent on

" Configuration for HTML files
autocmd FileType html setlocal shiftwidth=2 tabstop=2 softtabstop=2
au BufReadPost *.html set filetype=html
autocmd FileType javascript setlocal shiftwidth=2 tabstop=2 softtabstop=2
au BufReadPost *.javascript set filetype=javascript

" indicator at 120 chars
set colorcolumn=120
" turn syntax highlighting on
set t_Co=256
syntax on
" turn line numbers on
set number
" highlight matching braces
set showmatch
" highlight current line
set cursorline
" intelligent comments
set comments=sl:/*,mb:\ *,elx:\ */
" Highlight search pattern where found
set hlsearch
" Start searching on the first key stroke
set incsearch
"
" colorscheme
colorscheme molokai
let g:molokai_original = 1
let g:rehash256 = 1
syntax enable

" Enable italics
set t_ZH=^[[3m
set t_ZR=^[[23m

" Don’t show the intro message when starting Vim
set shortmess=atI
" Show the current mode
set showmode
" Show the filename in the window titlebar
set title
" Show the (partial) command as it’s being typed
set showcmd
" Use relative line numbers
if exists("&relativenumber")
	set relativenumber
	au BufReadPost * set relativenumber
endif
" Start scrolling three lines before the horizontal window border
set scrolloff=3

" Remove useless spaces at the end of the line
autocmd BufWritePre * %s/\s\+$//e

" Reformat the current file with YAPF
autocmd FileType python nnoremap <leader>y :0,$!yapf<Cr><C-o>h


"---------------------------------------
"--------------- Plugins ---------------
if filereadable(".vim_bundles.vim")
    source .vim_bundles.vim
endif

