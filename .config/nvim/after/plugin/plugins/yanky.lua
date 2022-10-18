local keymap = vim.keymap.set
local opts = { noremap = true }

-- Yanky history with Telescope.
keymap("n", "<A-h>", ":Telescope yank_history<CR>", opts)

-- Override default paste for Yanky paste.
keymap({ "n", "x" }, "p", "<Plug>(YankyPutAfter)", opts)
keymap({ "n", "x" }, "P", "<Plug>(YankyPutBefore)", opts)
keymap({ "n", "x" }, "gp", "<Plug>(YankyGPutAfter)", opts)
keymap({ "n", "x" }, "gP", "<Plug>(YankyGPutBefore)", opts)

-- Yanky history cycling, opts.
keymap("n", "<A-n>", "<Plug>(YankyCycleForward)", opts)
keymap("n", "<A-p>", "<Plug>(YankyCycleBackward)", opts)
