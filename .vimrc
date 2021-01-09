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
set nocompatible
so ~/configs/.vim/plugins.vim
so ~/configs/.vim/maps.vim
so ~/configs/.vim/plugin-config.vim
let g:python3_host_prog = '/usr/bin/python3'
let g:loaded_python_provider = 0

" Important!!
if has('termguicolors')
  set termguicolors
endif

set background=dark
let g:gruvbox_cotrast_dark="dark"
let g:gruvbox_bold=1
let g:gruvbox_italic=1
let g:gruvbox_termcolors=256

colorscheme gruvbox
