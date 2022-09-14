local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true }

-- Quick save.
keymap('n', '<leader>s', ':w<CR>', opts)

-- Buffer navigation.
keymap('n', '<C-N>', ':bnext<CR>', opts)
keymap('n', '<C-P>', ':bprev<CR>', opts)

-- Window navigation.
keymap('n', '<leader>h', ':wincmd h<CR>', opts)
keymap('n', '<leader>j', ':wincmd j<CR>', opts)
keymap('n', '<leader>k', ':wincmd k<CR>', opts)
keymap('n', '<leader>l', ':wincmd l<CR>', opts)

-- Window resizing.
keymap('n', '<silent><leader>+', ':vertical resize =5', opts)
keymap('n', '<silent><leader>-', ':vertical resize -5', opts)

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
