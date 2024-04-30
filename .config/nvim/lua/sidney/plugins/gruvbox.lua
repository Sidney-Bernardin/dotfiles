return {
    "morhetz/gruvbox",
    config = function()
        local hl = vim.api.nvim_set_hl

        vim.cmd.colorscheme('gruvbox')

        -- Highlighted yank
        hl(0, 'HighlightYank', { ctermfg = 235, ctermbg = 214, bold = true })

        -- Cursor line
        hl(0, 'CursorLine', { ctermbg = nil })
        hl(0, 'CursorLineNr', { ctermbg = 235, ctermfg = 214 })

        -- Treesitter Context
        hl(0, 'TreesitterContext', { ctermbg = 237 })
        hl(0, 'TreesitterContextLineNumber', { ctermbg = 237, ctermfg = 214 })

        -- Telescope
        hl(0, 'TelescopeMatching', { ctermfg = 214 })
        hl(0, 'TelescopePromptTitle', { ctermfg = 223 })
        hl(0, 'TelescopePromptNormal', { ctermbg = 239 })
        hl(0, 'TelescopePromptBorder', { ctermbg = 239, ctermfg = 239 })
        hl(0, 'TelescopePromptPrefix', { ctermfg = 214 })
        hl(0, 'TelescopePromptCounter', { ctermfg = 214 })
        hl(0, 'TelescopeResultsTitle', { ctermfg = 238 })
        hl(0, 'TelescopeResultsNormal', { ctermbg = 238, ctermfg = 223 })
        hl(0, 'TelescopeResultsBorder', { ctermbg = 238, ctermfg = 238 })
        hl(0, 'TelescopeSelection', { ctermbg = 240, ctermfg = 223 })
        hl(0, 'TelescopePreviewTitle', { ctermfg = 237 })
        hl(0, 'TelescopePreviewNormal', { ctermbg = 237 })
        hl(0, 'TelescopePreviewBorder', { ctermbg = 237, ctermfg = 237 })

        -- Harpoon
        hl(0, 'HarpoonWindow', { ctermbg = 239 })
        hl(0, 'HarpoonBorder', { ctermbg = 239, ctermfg = 223 })

        -- Other
        hl(0, 'Visual', { ctermbg = 109, ctermfg = 235, bold = true })
        hl(0, 'ColorColumn', { ctermbg = 236 })
        hl(0, 'WinBar', { ctermfg = 250 })
        hl(0, 'SignColumn', { ctermbg = 235 })
        hl(0, 'QuickFixLine', { ctermbg = 237 })
        hl(0, 'FloatBorder', { ctermbg = 239, ctermfg = 239 })
    end
}
