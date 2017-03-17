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
execute pathogen#infect()
call pathogen#helptags()

"--------------- python-mode ---------------
let g:pymode_virtualenv = 0
let g:pymode_options_max_line_length = 119
" " Folding can cause lag
 " Especially in Python, set the fold to match indent (default is syntax)
 let g:pymode_folding = 0
 let g:pymode_rope = 0
 " " Disable syntax checking with python-mode
 let g:pymode_lint = 0

"--------------- syntastic ---------------
" Recommended defaults
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_mode_map = {'mode': 'passive'}
let g:syntastic_loc_list_height = 5
nnoremap <leader>c :w<Cr>:SyntasticCheck<Cr>
" Python checker
let g:syntastic_python_checkers = ['pylint']

"--------------- vim-airline -------------
let g:airline_theme = 'luna'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
let g:airline_symbols.space = "\ua0"

"--------------- Powerline -------------
set rtp+=$HOME/.local/lib/python2.7/site-packages/powerline/bindings/vim/
" Always show statusline
set laststatus=2

"--------------- YouCompleteMe -------------
let g:ycm_complete_in_comments = 1
set completeopt-=preview
let g:ycm_add_preview_to_completeopt = 0

"--------------- indent-guides -------------
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=53
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=8


" Syntax coloring
filetype plugin indent on
syntax on
