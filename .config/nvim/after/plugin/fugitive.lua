local ok, fugitive = pcall(require, "fugitive")
if not ok then return end



fugitive.setup()



local keymap = vim.keymap.set
local opts = { noremap = true }

keymap("n", "<leader>gs", ":G<CR>", opts)
keymap("n", "<leader>[", ":diffget //3", opts)
keymap("n", "<leader>]", ":diffget //2", opts)
