vim.g.mapleader = " "


function map(mode, key, action)
    vim.keymap.set(mode, key, action, { noremap = true, silent = true })
end

map({'n', 'v'}, 'j', 'h')
map({'n', 'v'}, 'k', 'j')
map({'n', 'v'}, 'l', 'k')
map({'n', 'v'}, ';', 'l')

map('v', '<', '<gv')
map('v', '>', '>gv')

map('n', '<leader>wsv', '<C-w>v')
map('n', '<leader>wsh', '<C-w>s')
map('n', '<leader>wsx', '<cmd>close<CR>')

map('n', '<leader>i;', ':bp<CR>')
map('n', '<leader>o;', ':bn<CR>')

map('n', '<leader>tn', ':tabnew<CR>')
map('n', '<leader>tc', ':tabnew %<CR>')
map('n', '<leader>tx', ':tabclose<CR>')
map('n', '<leader>ti', ':tabp<CR>')
map('n', '<leader>to', ':tabn<CR>')

--map('n', '<leader>wrh+', ':resize +2<CR>')
--map('n', '<leader>wrh-', ':resize -2<CR>')
--map('n', '<leader>wrv+', ':vertical resize +2<CR>')
--map('n', '<leader>wrv-', ':vertical resize -2<CR>')

--[[
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"

nnoremap <silent><space>o :bn<CR>
nnoremap <silent><space>i :bp<CR>

nnoremap <silent><space>d :bd<CR>
nnoremap <silent><space>w :w<CR>:bd<CR>

nnoremap <silent><M-k> :resize -2<CR>
nnoremap <silent><M-l> :resize +2<CR>
nnoremap <silent><M-j> :vertical resize -2<CR>
nnoremap <silent><M-;> :vertical resize +2<CR>
]]--
