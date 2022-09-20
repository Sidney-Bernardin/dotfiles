local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true }

-- Prompt.
keymap('n', '<leader>t', ':Telescope ', opts)

-- Find in another directory prompt.
keymap('n', '<leader>f', ':Telescope find_files cwd=', opts)

-- Find in nvim config.
keymap('n', '<leader>fc', ':Telescope find_files cwd=~/.config/nvim<CR>', opts)

-- Find all of the things.
keymap('n', '<leader>ff', ':Telescope find_files<CR>', opts)
keymap('n', '<leader>fg', ':Telescope live_grep<CR>', opts)
keymap('n', '<leader>fb', ':Telescope buffers<CR>', opts)
keymap('n', '<leader>fh', ':Telescope help_tags<CR>', opts)
keymap('n', '<leader>fd', ':Telescope diagnostics<CR>', opts)
keymap('n', '<leader>fs', ':Telescope lsp_document_symbols<CR>', opts)
