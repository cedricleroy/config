set nocompatible
syntax on
filetype off

" vundle start
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" deactivate errorbells (e.g. sound on escape)
set belloff=all

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

" brew tap homebrew/cask-fonts
" brew cask install brew cask install font-fira-code
" (needs to be set in iTerm2 to run properly, with
" Hack Nerd Font to have icons in Nerd-Tree)
set guifont=Fira:h12

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

" Plugins -> :PluginInstall
Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'ryanoasis/vim-devicons'
Plugin 'flazz/vim-colorschemes'  " cp colors/* ~/.vim/colors
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'w0rp/ale'  " Asynchronous Lint Engine
Plugin 'valloric/youcompleteme'  " needs to run python3 install.py --rust-completer --ts-completer in ~/.vim/bundle/YouCompleteMe
Plugin 'mileszs/ack.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'junegunn/fzf'  " needs fzf to be installed
Plugin 'junegunn/fzf.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-surround'
Plugin 'janko/vim-test'
Plugin 'scrooloose/nerdcommenter'
Plugin 'jiangmiao/auto-pairs'

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

" key binding for nerdtree
map <C-n> :NERDTreeToggle<CR>

" show hidden files by default
let NERDTreeShowHidden=1

" key binding for fzf
map <leader>f :Files<CR>
map <leader>q :GFiles<CR>

map <C-c> <plug>NERDCommenterToggle

" Vundle stop
call vundle#end()
filetype plugin indent on

