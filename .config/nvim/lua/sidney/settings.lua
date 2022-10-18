-- [[ ===== Functions ===== ]] --

local sign_def = vim.fn.sign_define

-- Change diagnostic signs.
sign_def('DiagnosticSignError', { texthl = 'DiagnosticSignError', text = '', numhl = '' })
sign_def('DiagnosticSignWarn', { texthl = 'DiagnosticSignWarn', text = '', numhl = '' })
sign_def('DiagnosticSignHint', { texthl = 'DiagnosticSignHint', text = '', numhl = '' })
sign_def('DiagnosticSignInfo', { texthl = 'DiagnosticSignInfo', text = '', numhl = '' })

-- Change Dap signs.
sign_def("DapBreakpoint", { text = '' })



-- [[ ===== Global ===== ]] --

-- Leader key!
vim.g.mapleader = " "



-- [[ ===== Options ===== ]] --

local opt = vim.opt

-- Basic
opt.background = 'dark'
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
opt.expandtab = true
opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4

-- Bars
opt.laststatus = 3

-- Wrapping
opt.wrap = false
opt.cc = '80'

-- Search
opt.hlsearch = false
opt.incsearch = true
