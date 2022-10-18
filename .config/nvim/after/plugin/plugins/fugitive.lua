local keymap = vim.keymap.set
local opts = { noremap = true }

keymap('n', '<leader>gj', ':diffget //3', opts)
keymap('n', '<leader>gf', ':diffget //2', opts)
keymap('n', '<leader>gs', ':G<CR>', opts)
