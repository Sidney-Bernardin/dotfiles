vim.api.nvim_set_keymap('n', '<leader>gj', ':diffget //3', {})
vim.api.nvim_set_keymap('n', '<leader>gf', ':diffget //2', {})

-- Quick git status.
vim.api.nvim_set_keymap('n', '<leader>gs', ':G<CR>', {})
