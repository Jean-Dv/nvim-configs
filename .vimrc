set number
set mouse=a
set numberwidth=1
set clipboard=unnamed
syntax on
set noshowcmd
set ruler
set cursorline
set encoding=utf-8
set showmatch
set splitbelow
set noswapfile
set sw=2
set relativenumber
set noshowmode
set colorcolumn=120
set scrolloff=8
so ~/configs/.vim/plugins.vim
so ~/configs/.vim/maps.vim
so ~/configs/.vim/plugin-config.vim
let g:python3_host_prog = '/usr/bin/python3'
let g:loaded_python_provider = 0

" Theme
set termguicolors
" Config theme
let g:onedark_hide_endofbuffer=1
let g:onedark_termcolors=256
let g:onedark_terminal_italics=1
" Airline onedark
let g:airline_theme='onedark'
colorscheme onedark
