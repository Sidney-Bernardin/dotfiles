-- Quick telescope prompt.
vim.api.nvim_set_keymap('n', '<leader>t', ':Telescope ', {})

-- Search nvim config.
vim.api.nvim_set_keymap('n', '<leader>c', ':Telescope find_files cwd=~/.config/nvim<CR>', {})

-- Find all of the things.
vim.api.nvim_set_keymap('n', '<leader>ff', ':Telescope find_files<CR>', {})
vim.api.nvim_set_keymap('n', '<leader>fg', ':Telescope live_grep<CR>', {})
vim.api.nvim_set_keymap('n', '<leader>fb', ':Telescope buffers<CR>', {})
vim.api.nvim_set_keymap('n', '<leader>fh', ':Telescope help_tags<CR>', {})
vim.api.nvim_set_keymap('n', '<leader>fd', ':Telescope diagnostics<CR>', {})
vim.api.nvim_set_keymap('n', '<leader>fs', ':Telescope lsp_document_symbols<CR>', {})
