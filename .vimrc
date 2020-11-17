set expandtab ts=2 sw=2 ai
set laststatus=2
set nomodeline
set nonumber 
set backspace=indent,eol,start
set clipboard=unnamed
hi clear SignColumn
hi clear SpellBad
hi SpellBad cterm=underline
hi SignColumn ctermbg=17
nmap ; :
nmap ' @
syntax on
packloadall

" Installed in ~/.vim/bundle:
" - ale
" - typescript-vim
" - vim-airline
" - vim-gitgutter
" - vim-prettier
" - vim-styled-components
execute pathogen#infect()

let g:autopep8_disable_show_diff=1
let g:autopep8_on_save=1

let g:prettier#autoformat=1
let g:prettier#autoformat_require_pragma=0
let g:prettier#quickfix_enabled=0

let g:ale_sign_column_always=1
let g:ale_sign_error='> '
let g:ale_linters = { 'python': [] }

