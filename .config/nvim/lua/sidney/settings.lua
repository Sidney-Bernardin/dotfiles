local opt = vim.opt
local sign_def = vim.fn.sign_define

-- Leader Key
vim.g.mapleader = " "

-- Change diagnostic signs.
sign_def('DiagnosticSignError', { texthl = 'DiagnosticSignError', text = '', numhl = '' })
sign_def('DiagnosticSignWarn', { texthl = 'DiagnosticSignWarn', text = '', numhl = '' })
sign_def('DiagnosticSignHint', { texthl = 'DiagnosticSignHint', text = '', numhl = '' })
sign_def('DiagnosticSignInfo', { texthl = 'DiagnosticSignInfo', text = '', numhl = '' })

-- Cursor
opt.scrolloff = 8
opt.guicursor = ''
opt.cursorline = true

-- Line Numbers
opt.nu = true
opt.relativenumber = true
opt.signcolumn = 'yes'

-- Tabs
opt.smartindent = true
opt.expandtab = true
opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4

-- Bars
opt.laststatus = 3

-- Wrapping
opt.wrap = false
opt.cc = '80'

-- Searching
opt.hlsearch = false
opt.incsearch = true

-- Other
opt.background = 'dark'
opt.mouse = 'a'
