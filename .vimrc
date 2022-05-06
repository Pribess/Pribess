set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'ycm-core/YouCompleteMe'

call vundle#end()
filetype plugin indent on

colorscheme xcode
syntax enable

set sts=4
set nu
set cindent
set autoindent
set smartindent
set ruler
set title  
set ts=4
set incsearch
set showmatch
set backspace=indent,eol,start

let g:ycm_clangd_binary_path = trim(system('brew --prefix llvm')).'/bin/clangd'
let g:ycm_python_interpreter_path = '/usr/local/bin/python3'
let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'

let g:ycm_semantic_triggers = {
  \   'cpp': [ 're!.' ],
  \   'c++': [ 're!.' ],
  \   'python': [ 're!.']
  \ }
