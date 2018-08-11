set nocompatible
syntax on
filetype off

" vundle start
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" show line number
set number

" set tabs to have 4 spaces
set ts=4

" indent when moving to the next line while writing code
set expandtab

" when using the >> or << commands, shift by 4 spaces
set shiftwidth=4

" enable all Python sythax highlighting features
let python_highlight_all = 1

set encoding=utf-8

set background=dark

" disabling arrow keys :)
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" relative line number
set relativenumber

" key binding for another way to escape insert mode
inoremap jj <ESC>

" key binding for repeat
nmap <TAB> .

" Plugins
Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'flazz/vim-colorschemes'  " cp colors/* ~/.vim/colors
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'w0rp/ale'
Plugin 'davidhalter/jedi-vim'
Plugin 'mileszs/ack.vim'

" uses ack with ag (the Silver Searcher)
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

" jedi: do not display docstrings
autocmd FileType python setlocal completeopt-=preview

" Set a color scheme
colorscheme molokai

" airline
let g:airline#extensions#tabline#enabled = 1

" Set an airline theme
let g:airline_theme='molokai'

" ctrlp custom file listing for git projects
let g:ctrlp_user_command = {
    \ 'types': {
        \ 1: ['.git', 'cd %s && git ls-files --cached --exclude-standard --others'],
    \ },
    \ 'fallback': 'find %s -type f'
\ }

" key binding for nerdtree
map <C-n> :NERDTreeToggle<CR>

" Vundle stop
call vundle#end()
filetype plugin indent on

