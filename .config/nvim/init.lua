vim.g.mapleader = " "
vim.g.maplocalleader = "\\"
vim.g.db_ui_use_nerd_fonts = 1

--

require("core.options")
require("core.lazy")
require("core.lsp")
require("core.autocmds")
require("core.keymaps")

--

vim.api.nvim_set_hl(0, "CursorLine", { bg = "none" })
