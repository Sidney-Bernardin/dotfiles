vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

--

require("core.options")
require("core.lazy")
require("core.lsp")
require("core.autocmds")
require("core.keymaps")

--

vim.api.nvim_set_hl(0, "CursorLine", { bg = "none" })
