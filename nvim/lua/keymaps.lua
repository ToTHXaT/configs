vim.cmd[[
    nnoremap ; l
    nnoremap l k
    nnoremap k j
    nnoremap j h

    vnoremap ; l
    vnoremap l k
    vnoremap k j
    vnoremap j h

    vnoremap < <gv
    vnoremap > >gv

    nnoremap <silent><space>j <C-w>h
    nnoremap <silent><space>k <C-w>j
    nnoremap <silent><space>l <C-w>k
    nnoremap <silent><space>; <C-w>l

    nnoremap <silent><space>o :bn<CR>
    nnoremap <silent><space>i :bp<CR>

    nnoremap <silent><space>d :bd<CR>
    nnoremap <silent><space>w :w<CR>:bd<CR>

    nnoremap <silent><M-k> :resize -2<CR>
    nnoremap <silent><M-l> :resize +2<CR>
    nnoremap <silent><M-j> :vertical resize -2<CR>
    nnoremap <silent><M-;> :vertical resize +2<CR>
]]

--inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
