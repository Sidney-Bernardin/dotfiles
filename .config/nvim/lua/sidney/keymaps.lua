local keymap = vim.keymap.set
local opts = { noremap = true }

-- Quick save.
keymap('n', '<leader>s', ':w<CR>', opts)

-- Change distance of <C-d> and <C-u>.
vim.cmd([[nnoremap <expr> <C-d> (winheight(0) / 3) . '<C-d>']])
vim.cmd([[nnoremap <expr> <C-u> (winheight(0) / 3) . '<C-u>']])

-- Buffer navigation.
keymap('n', '<C-n>', ':bnext<CR>', opts)
keymap('n', '<C-p>', ':bprev<CR>', opts)

-- Window navigation.
keymap('n', '<leader>h', ':wincmd h<CR>', opts)
keymap('n', '<leader>j', ':wincmd j<CR>', opts)
keymap('n', '<leader>k', ':wincmd k<CR>', opts)
keymap('n', '<leader>l', ':wincmd l<CR>', opts)

-- Greatest remap ever.
keymap('v', '<leader>p', '"_dP', opts)

-- Quickfix List navigation.
keymap('n', '<C-j>', ':cnext<CR>', opts)
keymap('n', '<C-k>', ':cprev<CR>', opts)

-- Center screen.
keymap('n', 'G', 'Gzz', opts)

-- Undo break points.
keymap('i', ',', ',<c-g>u', opts)
keymap('i', '.', '.<c-g>u', opts)

keymap('n', '<leader>m', function()
    print()
end, opts)
