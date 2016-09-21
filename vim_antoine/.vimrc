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
set tabstop=2 " tab width is 4 spaces
set expandtab " expand tabs to spaces
set softtabstop=2
set shiftwidth=2 " indent also with 4 spaces
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

" Apply pathogens
execute pathogen#infect()

colorscheme molokai
let g:molokai_original = 1
let g:rehash256 = 1
syntax enable
" Set airline theme too
let g:airline_theme = 'luna'

" Enable italics
set t_ZH=[3m
set t_ZR=[23m

" Python (python-mode)
call pathogen#helptags()
filetype plugin indent on
let g:pymode_options_max_line_length = 119
" Folding can cause lag
" Especially in Python, set the fold to match indent (default is syntax)
set foldmethod=indent
let g:pymode_folding = 0
" Prevent from autocomp on imports
let g:pymode_rope_complete_on_dot = 0
let g:pymode_rope_lookup_project = 0
let g:pymode_rope = 0

" Powerline --------
set rtp+=$HOME/.local/lib/python2.7/site-packages/powerline/bindings/vim/
" Always show statusline
set laststatus=2

"vim-airline---------------
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
let g:airline_symbols.space = "\ua0"

" indent-guides
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1
let g:indent_guides_enable_on_vim_startup = 1

" Redefine indent guides colors
let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=53
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=8

" Highlight variable under cursor
" autocmd CursorMoved * exe printf('match CurrentVar /\V\<%s\>/', escape(expand('<cword>'), '/\'))

" Parameters for YouCompleteMet
let g:ycm_min_num_of_chars_for_completion=3
set completeopt-=preview


" NERDTress File highlighting
function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
 exec 'autocmd filetype nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
 exec 'autocmd filetype nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
endfunction

call NERDTreeHighlightFile('py', 109, 'none', 109, 'none')
call NERDTreeHighlightFile('npy', 109, 239, 109, 'none')
call NERDTreeHighlightFile('pyc', 239, 'none', 109, 'none')
call NERDTreeHighlightFile('jade', 'green', 'none', 'green', '#151515')
call NERDTreeHighlightFile('ini', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('md', 'blue', 'none', '#3366FF', '#151515')
call NERDTreeHighlightFile('yml', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('config', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('conf', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('json', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('html', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('styl', 'cyan', 'none', 'cyan', '#151515')
call NERDTreeHighlightFile('css', 'cyan', 'none', 'cyan', '#151515')
" Search the visual selection with //
vnoremap // y/<C-R>"<CR>
" Markdown-preview
let g:mkdp_path_to_chrome = "firefox"
let g:mkdp_auto_start = 1
let g:mkdp_auto_open = 1
let g:mkdp_auto_close = 1
" CtrlP 
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
