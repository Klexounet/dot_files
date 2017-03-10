"---------------------------------------
"--------------- Plugins ---------------
execute pathogen#infect()
filetype plugin indent on
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
