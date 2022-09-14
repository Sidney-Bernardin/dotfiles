local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true }

-- Add file.
keymap('n', '<C-a>', ':lua require("harpoon.mark").add_file()<CR>', opts)

-- Open menu.
keymap('n', '<C-u>', ':lua require("harpoon.ui").toggle_quick_menu()<CR>', opts)

-- File navigation.
keymap('n', '<C-j>', ':lua require("harpoon.ui").nav_file(1)<CR>', opts)
keymap('n', '<C-k>', ':lua require("harpoon.ui").nav_file(2)<CR>', opts)
keymap('n', '<C-l>', ':lua require("harpoon.ui").nav_file(3)<CR>', opts)
