-- Leader key!
vim.g.mapleader = " "

local opt = vim.opt

-- Background
opt.background = 'dark'

-- Cursor
opt.scrolloff = 8
opt.guicursor = ''
opt.cursorline = true

-- Line Numbers
opt.nu = true
opt.relativenumber = true
opt.signcolumn = "yes"

-- Tab
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

-- Past
opt.pastetoggle = '<F3>'
