set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'


Plugin 'scrooloose/nerdtree'

Plugin 'terryma/vim-multiple-cursors'
Plugin 'terryma/vim-smooth-scroll'


call vundle#end()
filetype plugin indent on

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

map <C-e> :NERDTreeToggle<CR>

noremap <silent> <c-u> :call smooth_scroll#up(&scroll, 10, 3)<CR>
noremap <silent> <c-d> :call smooth_scroll#down(&scroll, 10, 3)<CR>

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_cpp_compiler = 'g++'
let g:syntastic_cpp_compiler_options = '-I/usr/local/include'
let g:syntastic_cpp_check_header = 1
