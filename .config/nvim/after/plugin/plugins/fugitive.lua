local keymap = vim.keymap.set
local opts = { noremap = true }

keymap('n', '<leader>g;', ':diffget //3', opts)
keymap('n', '<leader>ga', ':diffget //2', opts)
keymap('n', '<leader>gs', ':G<CR>', opts)
