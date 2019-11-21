
```sh
"中文乱码 下两行“
"set termencoding=utf-8
"set encoding=prc

set number
set autoindent
set tabstop=4
set shiftwidth=4
set pastetoggle=<F9>
syntax on

"set laststatus=2 "show the status lineset statusline=%-10.3n  "buffer number
"map <silent><leader>1 :diffget 1<CR>:diffupdate<CR>
"map <silent><leader>2 :diffget 2<CR>:diffupdate<CR>
"map <silent><leader>3 :diffget 3<CR>:diffupdate<CR>
"map <silent><leader>4 :diffget 4<CR>:diffupdate<CR>

set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
"Plugin 'mattn/emmet-vim'
"Plugin 'Valloric/YouCompleteMe'
"Plugin 'Raimondi/delimitMate'
"Plugin 'pugjs/pug'
"Plugin 'scrooloose/nerdtree'
Plugin 'godlygeek/tabular'
Plugin 'scrooloose/nerdcommenter'

call vundle#end()
filetype plugin indent on

"autocmd vimenter * NERDTree
```
