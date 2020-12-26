let mapleader = " "

"Use <c-space> to trigger completion.
if &filetype == "javascript" || &filetype == "python" 
  inoremap <c-space> <C-x><C-u>
else
  inoremap <silent><expr> <c-space> coc#refresh()
endif

" Maps general
nmap <F5> :source ~/nvim-config/.vimrc<CR>
vmap <F5> :source ~/nvim-config/.vimrc<CR>

nmap <leader>te :vsplit term://zsh<CR>
noremap <up> <nop>
noremap <down> <nop>
noremap <left> <nop>
noremap <right> <nop>
inoremap ii <Esc>
nmap <silent> ,/ :nohlsearch<CR>
nnoremap <leader>w :w<CR>
nnoremap <silent> <right> :vertical resize +5<CR>
nnoremap <silent> <left> :vertical resize -5<CR>
nnoremap <silent> <up> :resize +5<CR>
nnoremap <silent> <down> :resize -5<CR>
nnoremap <leader>e :e $MYVIMRC<CR>

vnoremap <c-t> :split<CR>:ter<CR>:resize 15<CR>
nnoremap <c-t> :split<CR>:ter<CR>:resize 15<CR>

" Moverse al buffer siguiente con <líder> + k
nnoremap <leader>k :bnext<CR>

" Moverse al buffer anterior con <líder> + j
nnoremap <leader>j :bprevious<CR>

" Cerrar el buffer actual con <líder> + q
nnoremap <leader>q :bdelete<CR>

"crear una nueva ventana
nnoremap <leader>t :tabe<CR>

"hacer un split vertical
nnoremap <leader>vs :vsp<CR>

"hacer un split horizontal
nnoremap <leader>sp :sp<CR>
