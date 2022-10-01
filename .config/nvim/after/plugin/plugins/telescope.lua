local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true }

-- Prompt.
keymap('n', '<leader>t', ':Telescope ', opts)

-- Find files.
keymap('n', '<leader>ff', ':Telescope find_files<CR>', opts)

-- Find another directory prompt.
keymap('n', '<leader>fo', ':Telescope find_files cwd=', opts)

-- Find nvim config.
keymap('n', '<leader>fc', ':Telescope find_files cwd=~/.config/nvim<CR>', opts)

-- Telescope all of the things.
keymap('n', '<leader>b', ':Telescope buffers<CR>', opts)
keymap('n', '<leader>td', ':Telescope diagnostics<CR>', opts)
keymap('n', '<leader>y', ':Telescope lsp_document_symbols<CR>', opts)
keymap('n', '<leader>tg', ':Telescope live_grep<CR>', opts)
