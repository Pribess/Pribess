set nocompatible
filetype off

call plug#begin()

Plug 'ycm-core/YouCompleteMe'
Plug 'Raimondi/delimitMate'

call plug#end()
filetype plugin indent on

colorscheme xcode
syntax enable

set sts=4
set nu
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
  \   'c': [ 're!.' ],
  \   'c++': [ 're!.' ],
  \   'python': [ 're!.']
  \ }


let delimitMate_expand_cr=1
