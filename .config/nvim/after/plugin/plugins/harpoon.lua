local keymap = vim.keymap.set
local opts = { noremap = true }

-- Mark File
keymap('n', '<A-m>', ':lua require("harpoon.mark").add_file()<CR>', opts)

-- Open Menu
keymap('n', '<A-u>', ':lua require("harpoon.ui").toggle_quick_menu()<CR>', opts)

-- File Navigation
keymap('n', '<A-j>', ':lua require("harpoon.ui").nav_file(1)<CR>', opts)
keymap('n', '<A-k>', ':lua require("harpoon.ui").nav_file(2)<CR>', opts)
keymap('n', '<A-l>', ':lua require("harpoon.ui").nav_file(3)<CR>', opts)
keymap('n', '<A-;>', ':lua require("harpoon.ui").nav_file(4)<CR>', opts)
