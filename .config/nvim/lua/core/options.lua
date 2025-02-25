vim.opt.background = "dark"
vim.opt.mouse = ""
vim.opt.laststatus = 3

vim.fn.sign_define("DiagnosticSignError", { texthl = "DiagnosticSignError", text = "", numhl = "" })
vim.fn.sign_define("DiagnosticSignWarn", { texthl = "DiagnosticSignWarn", text = "", numhl = "" })
vim.fn.sign_define("DiagnosticSignInfo", { texthl = "DiagnosticSignInfo", text = "", numhl = "" })
vim.fn.sign_define("DiagnosticSignHint", { texthl = "DiagnosticSignHint", text = "", numhl = "" })

-- Cursor
vim.opt.scrolloff = 8
vim.opt.guicursor = ""
vim.opt.cursorline = true

-- Line Numbers
vim.opt.nu = true
vim.opt.relativenumber = true
vim.opt.signcolumn = "yes"

-- Tabs
vim.opt.smartindent = true
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4

-- Wrapping
vim.opt.wrap = false
vim.opt.cc = "80"

-- Searching
vim.opt.hlsearch = false
vim.opt.incsearch = true
