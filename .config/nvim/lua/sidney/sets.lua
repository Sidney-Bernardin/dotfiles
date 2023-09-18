local opt = vim.opt

opt.background = 'dark'
opt.mouse = nil
opt.laststatus = 3

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

-- Wrapping
opt.wrap = false
opt.cc = '80'

-- Searching
opt.hlsearch = false
opt.incsearch = true
