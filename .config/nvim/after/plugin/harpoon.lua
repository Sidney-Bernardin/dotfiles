-- Add file.
vim.api.nvim_set_keymap('n', '<C-a>', ':lua require("harpoon.mark").add_file()<CR>', {})

-- Open menu.
vim.api.nvim_set_keymap('n', '<C-u>', ':lua require("harpoon.ui").toggle_quick_menu()<CR>', {})

-- File navigation.
vim.api.nvim_set_keymap('n', '<C-j>', ':lua require("harpoon.ui").nav_file(1)<CR>', {})
vim.api.nvim_set_keymap('n', '<C-k>', ':lua require("harpoon.ui").nav_file(2)<CR>', {})
vim.api.nvim_set_keymap('n', '<C-l>', ':lua require("harpoon.ui").nav_file(3)<CR>', {})
