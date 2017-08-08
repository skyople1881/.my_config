call plug#begin('~/.vim/plugged')

"Plug 'valloric/youcompleteme'

Plug 'Yggdroot/indentLine'

Plug 'vim-airline/vim-airline'

Plug 'vim-airline/vim-airline-themes'

Plug 'sheerun/vim-polyglot'
call plug#end()

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
set showtabline=2
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
"

"Basic setting
set nu
set backspace=2
set cursorline
hi CursorLine cterm=bold ctermbg=240 ctermfg=none
set tabstop=2 softtabstop=2 expandtab shiftwidth=2 smarttab
set list lcs=tab:\|\ 
"syntax on
set mouse=a
set nocompatible              " be iMproved, required
"Compile c code parameters & Shortcut
set makeprg=g++\ -Wall\ -Wshadow\ -O2\ -std=c++11\ %:p\ -o\ %:r
autocmd filetype cpp map <F9> :w <bar> make <CR> <CR>:let g:is_open = 0<CR> :call ToggleQuickFix()<CR>
autocmd filetype cpp map <F9> :w <bar> make <CR> <CR>:let g:is_open = 0 <CR> :call ToggleQuickFix()<CR>
map ] :cnext<CR>  
map [ :cprevious<CR>
"Reload vimrc shortcut96
map! <C-S-r> <ESC>:wa<CR>:source ~/.vimrc<CR>
map <C-S-r> <ESC>:wa<CR>:source ~/.vimrc<CR>


"Toggle QuickFix Windows
let g:is_open = 0
function! ToggleQuickFix()
  if g:is_open == 1
    cclose
    let g:is_open = 0
  else
    vert copen
    vert resize 40
    wincmd h
    let g:is_open = 1
  endif
endfunction
nmap <script> <silent> <F10> :call ToggleQuickFix()<CR>
