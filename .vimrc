call plug#begin('~/.vim/plugged')

Plug 'ayu-theme/ayu-vim' " or other package manager

Plug 'pangloss/vim-javascript'

Plug 'vim-airline/vim-airline'

Plug 'vim-airline/vim-airline-themes'

Plug 'valloric/youcompleteme'

Plug 'Yggdroot/indentLine'

call plug#end()

" ayu-vim 
"set termguicolors     " enable true colors support
"let ayucolor="light"  " for light version of theme
"let ayucolor="mirage" " for mirage version of theme
"let ayucolor="dark"   " for dark version of theme
colorscheme ayu
"

" vim-airline-theme
let g:airline#extensions#tabline#enabled = 1
set laststatus=2
let g:airline_theme='papercolor'

" indentLine
let g:indentLine_enabled = 1
let g:indentLine_setColors = 1
let g:indentLine_char = "┆"
let g:indentLine_leadingSpaceEnabled = 1
let g:indentLine_leadingSpaceChar = "˽"
let g:indentLine_color_term = 239

"youcompleteme
"let g:ycm_enable_diagnostic_highlighting = 1
"let g:ycm_seed_identifiers_with_syntax = 1
"let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_config.py'
"let g:ycm_confirm_extra_conf = 0
"let g:ycm_max_diagnostics_to_display = 5
"set completeopt-=preview
"let g:ycm_add_preview_to_completeopt = 0
"set pumheight=5

"Basic setting
set nu
set tabstop=2 softtabstop=2 expandtab shiftwidth=2 smarttab
"set list lcs=tab:\|\ 
syntax on
set mouse=a
set nocompatible              " be iMproved, required
"Color
set term=screen-256color
set t_ut=
"Compile c code parameters & Shortcut
se makeprg=g++\ -Wall\ -Wshadow\ -O2\ -std=c++11\ -o\ %<\ %
map! <F7> <ESC>:wa<CR>:make! | colorgcc<CR>
map <F7> <ESC>:wa<CR>:make! | colorgcc<CR>
"Reload vimrc shortcut
map! <C-r> <ESC>:wa<CR>:source ~/.vimrc<CR>
map <C-r> <ESC>:wa<CR>:source ~/.vimrc<CR>
