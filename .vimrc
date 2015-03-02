"execute pathogen#infect()
"call pathogen#helptags()
set nocompatible " be iMproved, required
filetype off     " required
syntax on

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'kien/ctrlp.vim'
Plugin 'drmingdrmer/xptemplate'
Plugin 'derekwyatt/vim-scala'
Plugin 'flazz/vim-colorschemes'
Plugin 'sjl/gundo.vim'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-fugitive'
Plugin 'elzr/vim-json'
Plugin 'scrooloose/nerdcommenter'
Plugin 'vim-scripts/bufkill.vim'
call vundle#end()

filetype plugin indent on   " required
filetype on
let mapleader = "," 
set undodir^=~/.vim/undo
set background=dark
set foldmethod=indent
set foldlevel=99
set guifont=Source\ Code\ Pro:h14
colorscheme getafe 
"map <C-n> :NERDTreeToggle<CR>
"let NERDTreeQuitOnOpen = 1
map <Leader>t :w<CR>:Require<CR>:Eval (run-all-tests)<CR>
au FileType xml setlocal equalprg=xmllint\ --format\ --recover\ -\ 2>/dev/null
set ts=4 sw=4 expandtab

"set clipboard=unnamed

augroup filetypedetect 
  au BufNewFile,BufRead *.pig set filetype=pig syntax=pig 
  au BufNewFile,BufRead *.scala set filetype=scala syntax=scala
augroup END





