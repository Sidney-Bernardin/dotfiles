vim.fn.sign_define('DiagnosticSignError', { texthl = 'DiagnosticSignError', text = '', numhl = '' })
vim.fn.sign_define('DiagnosticSignWarn', { texthl = 'DiagnosticSignWarn', text = '', numhl = '' })
vim.fn.sign_define('DiagnosticSignHint', { texthl = 'DiagnosticSignHint', text = '', numhl = '' })
vim.fn.sign_define('DiagnosticSignInfo', { texthl = 'DiagnosticSignInfo', text = '', numhl = '' })



-- [[ ===== Global ===== ]] --

-- Leader key!
vim.g.mapleader = " "



-- [[ ===== Options ===== ]] --

local opt = vim.opt

-- Basics
opt.background = 'dark'

-- Mouse
opt.mouse = nil

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
opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.expandtab = true

-- Search
opt.hlsearch = false
opt.incsearch = true

-- Wrapping
opt.wrap = false
opt.cc = '80'

-- Pasting
opt.pastetoggle = '<F3>'

-- Bars
opt.laststatus = 3
