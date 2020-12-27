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
nnoremap <C-t> :call OpenTerminal()<CR>
nnoremap <C-w>w :call CloseBuffer()<CR>
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

" Open Terminal
function! OpenTerminal()
  let $NEOFETCH = '' 

  let buf_num = bufnr('%')
  let buf_type = getbufvar(buf_num, '&buftype', 'not found')

  if buf_type == 'terminal'
    execute 'q'
  else
    let terminal_height = winheight(0) / 6

    execute terminal_height"sp term://zsh"
    
    execute "set nonu"
    execute "set nornu"
    execute "set nocursorline"
    
    execute "set signcolumn=no"

    silent au BufLeave <buffer> stopinsert!
    silent au BufWinEnter,WinEnter <buffer> startinsert!

    execute "tnoremap <buffer> <C-w><Up> <C-\\><C-n><C-w><C-k>"
    execute "tnoremap <buffer> <C-t> <C-\\><C-n>:q<CR>"
    execute "tnoremap <buffer> <C-n> <C-\\><C-n>"
    execute "tnoremap <buffer> <C-\\><C-\\> <C-\\><C-n>"

    execute "tnoremap <buffer> <C-+> <C-\\><C-w>10+<CR>"
    execute "tnoremap <buffer> <C--> <C-\\><C-w>10+<CR>"
    
    execute "setlocal nobuflisted"

    startinsert!
  endif
endfunction

augroup terminal_settings
  autocmd!

  autocmd BufWinEnter,WinEnter term://* startinsert
  autocmd BufLeave term://* stopinsert
  
  autocmd TermClose term://*
    \ if (expand('<afile>') !~ "fzf") && (expand('<afile>') !~ "ranger") && (expand('<afile>') !~ "coc") |
    \   call nvim_input('<CR>') |
    \ endif
augroup END

function! CloseBuffer()
  let buf_len = len(getbufinfo({ 'buflisted': 1 }))

  if buf_len <= 1
    execute 'q'
  
    let buf_num = bufnr('%')
    let buf_type = getbufvar(buf_num, '&buftype', 'not found')

    if buf_type == 'terminal'
      execute 'q'
    endif
  else
    execute 'bp'
    execute 'bd #'
  endif
endfunction
