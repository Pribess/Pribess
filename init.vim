call plug#begin()

Plug 'neoclide/coc.nvim', { 'branch': 'release' }

call plug#end()

set nocompatible

filetype plugin indent on

syntax enable

set shiftwidth=4
set sts=4
set nu
set ruler
set title  
set ts=4
set incsearch
set showmatch
set backspace=indent,eol,start
set cursorline

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
