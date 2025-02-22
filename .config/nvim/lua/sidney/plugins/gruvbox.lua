return {
    "morhetz/gruvbox",

    config = function()
        vim.o.termguicolors = false
        vim.cmd.colorscheme("gruvbox")

        -- Highlighted yank
        vim.api.nvim_set_hl(0, "HighlightYank", { ctermfg = 235, ctermbg = 214, bold = true })

        -- Cursor line
        vim.api.nvim_set_hl(0, "CursorLine", { ctermbg = nil })
        vim.api.nvim_set_hl(0, "CursorLineNr", { ctermbg = 235, ctermfg = 214 })

        -- Treesitter Context
        vim.api.nvim_set_hl(0, "TreesitterContext", { ctermbg = 237 })
        vim.api.nvim_set_hl(0, "TreesitterContextLineNumber", { ctermbg = 237, ctermfg = 214 })

        -- Telescope
        vim.api.nvim_set_hl(0, "TelescopeMatching", { ctermfg = 214 })
        vim.api.nvim_set_hl(0, "TelescopePromptTitle", { ctermfg = 223 })
        vim.api.nvim_set_hl(0, "TelescopePromptNormal", { ctermbg = 239 })
        vim.api.nvim_set_hl(0, "TelescopePromptBorder", { ctermbg = 239, ctermfg = 239 })
        vim.api.nvim_set_hl(0, "TelescopePromptPrefix", { ctermfg = 214 })
        vim.api.nvim_set_hl(0, "TelescopePromptCounter", { ctermfg = 214 })
        vim.api.nvim_set_hl(0, "TelescopeResultsTitle", { ctermfg = 238 })
        vim.api.nvim_set_hl(0, "TelescopeResultsNormal", { ctermbg = 238, ctermfg = 223 })
        vim.api.nvim_set_hl(0, "TelescopeResultsBorder", { ctermbg = 238, ctermfg = 238 })
        vim.api.nvim_set_hl(0, "TelescopeSelection", { ctermbg = 240, ctermfg = 223 })
        vim.api.nvim_set_hl(0, "TelescopePreviewTitle", { ctermfg = 237 })
        vim.api.nvim_set_hl(0, "TelescopePreviewNormal", { ctermbg = 237 })
        vim.api.nvim_set_hl(0, "TelescopePreviewBorder", { ctermbg = 237, ctermfg = 237 })

        -- Harpoon
        vim.api.nvim_set_hl(0, "HarpoonWindow", { ctermbg = 239 })
        vim.api.nvim_set_hl(0, "HarpoonBorder", { ctermbg = 239, ctermfg = 223 })

        -- Other
        vim.api.nvim_set_hl(0, "Visual", { ctermbg = 109, ctermfg = 235, bold = true })
        vim.api.nvim_set_hl(0, "ColorColumn", { ctermbg = 236 })
        vim.api.nvim_set_hl(0, "WinSeparator", { ctermfg = 237 })
        vim.api.nvim_set_hl(0, "WinBar", { ctermfg = 250 })
        vim.api.nvim_set_hl(0, "WinBarNC", { ctermfg = 250 })
        vim.api.nvim_set_hl(0, "SignColumn", { ctermbg = 235 })
        vim.api.nvim_set_hl(0, "QuickFixLine", { ctermbg = 237 })
        vim.api.nvim_set_hl(0, "NormalFloat", { ctermbg = 239 })
        vim.api.nvim_set_hl(0, "FloatBorder", { ctermbg = 239, ctermfg = 239 })
    end
}
