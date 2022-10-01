vim.cmd('colorscheme gruvbox')



-- [[ ===== Custom Gruvbox highlights ===== ]] --

-- Highlight Yank color.
vim.api.nvim_set_hl(0, 'HighlightYank', { ctermfg = 235, ctermbg = 214 })

-- Cursor Line
vim.cmd([[ highlight! CursorLine ctermbg=NONE ]])
vim.cmd([[ highlight! CursorLineNr ctermbg=235 ctermfg=214 ]])

-- Treesitter Context
vim.cmd([[ highlight! TreesitterContext ctermbg=237 ]])
vim.cmd([[ highlight! TreesitterContextLineNumber ctermbg=237 ctermfg=214 ]])

-- Telescope
vim.cmd([[ highlight! TelescopeMatching ctermfg=214 ]])
vim.cmd([[ highlight! TelescopePromptTitle ctermbg=NONE ctermfg=223 ]])
vim.cmd([[ highlight! TelescopePromptNormal ctermbg=238 ]])
vim.cmd([[ highlight! TelescopePromptBorder ctermbg=238 ctermfg=238]])
vim.cmd([[ highlight! TelescopePromptPrefix ctermfg=214 ]])
vim.cmd([[ highlight! TelescopePromptCounter ctermfg=214 ]])
vim.cmd([[ highlight! TelescopeResultsTitle ctermbg=NONE ctermfg=239 ]])
vim.cmd([[ highlight! TelescopeResultsNormal ctermbg=239 ctermfg=223]])
vim.cmd([[ highlight! TelescopeResultsBorder ctermbg=239 ctermfg=239]])
vim.cmd([[ highlight! TelescopeSelection ctermbg=241 ctermfg=223 ]])
vim.cmd([[ highlight! TelescopePreviewTitle ctermbg=NONE ctermfg=223 ]])
vim.cmd([[ highlight! TelescopePreviewNormal ctermbg=236 ]])
vim.cmd([[ highlight! TelescopePreviewBorder ctermbg=236 ctermfg=236 ]])

-- Other.
vim.cmd([[ highlight! SignColumn ctermbg=235 ]])
