set nocompatible

" load script managed by pathogen
execute pathogen#infect()
filetype plugin indent on
syntax on

" enable syntax highlighting
syntax enable

" show line number
set number

" set tabs to have 4 spaces
set ts=4

" indent when moving to the next line while writing code
set expandtab

" when using the >> or << commands, shift by 4 spaces
set shiftwidth=4

" show a visual line under the cusor's current line
" set cursorline

" show the matching part of the pair for [] {} amnd ()

" enable all Python sythax highlighting features
let python_highlight_all = 1

set encoding=utf-8

set background=dark

" Enable vim airline
set noshowmode
set laststatus=2
set t_Co=256
" load airline theme
let g:airline_theme='molokai'

" Vim Jedi (Python autocompletion)
autocmd FileType python setlocal completeopt-=preview

" disabling arrow keys :)
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" relaive line number
set relativenumber
