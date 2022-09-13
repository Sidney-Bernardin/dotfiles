vim.g.mapleader = " "

-- Quick save.
vim.api.nvim_set_keymap('n', '<leader>s', ':w<CR>', {noremap = true})

-- Buffer navigation.
vim.api.nvim_set_keymap('n', '<C-N>', ':bnext<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<C-P>', ':bprev<CR>', {noremap = true})

-- Window navigation.
vim.api.nvim_set_keymap('n', '<leader>h', ':wincmd h<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<leader>j', ':wincmd j<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<leader>k', ':wincmd k<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<leader>l', ':wincmd l<CR>', {noremap = true})

-- Window resizing.
vim.api.nvim_set_keymap('n', '<silent><leader>+', ':vertical resize =5', {noremap = true})
vim.api.nvim_set_keymap('n', '<silent><leader>-', ':vertical resize -5', {noremap = true})

-- Greatest remap ever.
vim.api.nvim_set_keymap('v', '<leader>p', '"_dP', {noremap = true})

-- Quickfix List navigation.
vim.api.nvim_set_keymap('n', '<C-j>', ':cnext<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<C-k>', ':cprev<CR>', {noremap = true})

-- Center screen.
vim.api.nvim_set_keymap('n', 'G', 'Gzz', {noremap = true})

-- Undo break points.
vim.api.nvim_set_keymap('i', ',', ',<c-g>u', {noremap = true})
vim.api.nvim_set_keymap('i', '.', '.<c-g>u', {noremap = true})
