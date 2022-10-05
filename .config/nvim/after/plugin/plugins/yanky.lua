-- Yanky history with Telescope.
vim.keymap.set("n", "<A-h>", ":Telescope yank_history<CR>")

-- Override default paste for Yanky paste.
vim.keymap.set({ "n", "x" }, "p", "<Plug>(YankyPutAfter)")
vim.keymap.set({ "n", "x" }, "P", "<Plug>(YankyPutBefore)")
vim.keymap.set({ "n", "x" }, "gp", "<Plug>(YankyGPutAfter)")
vim.keymap.set({ "n", "x" }, "gP", "<Plug>(YankyGPutBefore)")

-- Yanky history cycling.
vim.keymap.set("n", "<A-n>", "<Plug>(YankyCycleForward)")
vim.keymap.set("n", "<A-p>", "<Plug>(YankyCycleBackward)")
