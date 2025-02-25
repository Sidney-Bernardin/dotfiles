return {
    {
        "ellisonleao/gruvbox.nvim",
        priority = 1000,
        config = function()
            vim.cmd.colorscheme("gruvbox")

            local p = require("gruvbox").palette

            vim.api.nvim_set_hl(0, "HighlightYank", { bg = p.bright_yellow, fg = p.dark0, bold = true })
            vim.api.nvim_set_hl(0, "SignColumn", { bg = nil, fg = p.dark0_soft })
            vim.api.nvim_set_hl(0, "ColorColumn", { bg = p.dark0_soft })

            vim.api.nvim_set_hl(0, "CursorLine", { bg = nil })
            vim.api.nvim_set_hl(0, "CursorLineNr", { bg = nil, fg = p.bright_yellow })

            vim.api.nvim_set_hl(0, "WinBar", { fg = p.dark4 })
            vim.api.nvim_set_hl(0, "WinBarNC", { fg = p.dark4 })

            vim.api.nvim_set_hl(0, "TreesitterContext", { bg = p.dark0_hard })
            vim.api.nvim_set_hl(0, "TreesitterContextLineNumber", { bg = p.dark0_hard, fg = p.bright_yellow })

            vim.api.nvim_set_hl(0, "GruvboxGreenSign", { bg = nil, fg = p.bright_green })
            vim.api.nvim_set_hl(0, "GruvboxAquaSign", { bg = nil, fg = p.bright_aqua })
            vim.api.nvim_set_hl(0, "GruvboxYellowSign", { bg = nil, fg = p.bright_yellow })
            vim.api.nvim_set_hl(0, "GruvboxRedSign", { bg = nil, fg = p.bright_red })
            vim.api.nvim_set_hl(0, "GruvboxBlueSign", { bg = nil, fg = p.bright_blue })
            vim.api.nvim_set_hl(0, "GruvboxOrangeSign", { bg = nil, fg = p.bright_orange })
            vim.api.nvim_set_hl(0, "GruvboxPurpleSign", { bg = nil, fg = p.bright_purple })

            vim.api.nvim_set_hl(0, "TelescopeSelection", { link = "Visual" })
            vim.api.nvim_set_hl(0, "TelescopeMatching", { fg = p.bright_yellow })

            vim.api.nvim_set_hl(0, "TelescopePromptTitle", { fg = p.light1 })
            vim.api.nvim_set_hl(0, "TelescopePromptNormal", { bg = p.dark1 })
            vim.api.nvim_set_hl(0, "TelescopePromptBorder", { bg = p.dark1, fg = p.dark1 })
            vim.api.nvim_set_hl(0, "TelescopePromptPrefix", { fg = p.bright_yellow })
            vim.api.nvim_set_hl(0, "TelescopePromptCounter", { fg = p.bright_yellow })

            vim.api.nvim_set_hl(0, "TelescopeResultsTitle", { fg = p.dark0_soft })
            vim.api.nvim_set_hl(0, "TelescopeResultsNormal", { bg = p.dark0_soft })
            vim.api.nvim_set_hl(0, "TelescopeResultsBorder", { bg = p.dark0_soft, fg = p.dark0_soft })

            vim.api.nvim_set_hl(0, "TelescopePreviewTitle", { fg = p.dark0_hard })
            vim.api.nvim_set_hl(0, "TelescopePreviewNormal", { bg = p.dark0_hard })
            vim.api.nvim_set_hl(0, "TelescopePreviewBorder", { bg = p.dark0_hard, fg = p.dark0_hard })
        end,
    },
}
