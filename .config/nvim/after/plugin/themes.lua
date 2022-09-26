-- Gruvbox
vim.cmd('colorscheme gruvbox')
vim.api.nvim_set_hl(0, 'HighlightYank', { ctermfg = 235, ctermbg = 214 })
vim.cmd([[ highlight! CursorLine ctermbg=NONE ]])
vim.cmd([[ highlight! CursorLineNr ctermbg=235 ctermfg=214 ]])
vim.cmd([[ highlight! TreesitterContext ctermbg=237 ]])
vim.cmd([[ highlight! TreesitterContextLineNumber ctermbg=237 ctermfg=214 ]])
