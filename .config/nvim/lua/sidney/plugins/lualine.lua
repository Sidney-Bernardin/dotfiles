local colors = {
    bg = 237,
    fg = 250,
    modified_file = 223,
}

local lualine_config = {
    options = {
        theme = {
            normal = {
                a = { bg = colors.bg, fg = colors.fg },
                z = { bg = colors.bg, fg = colors.fg },
            },
        },
        section_separators = '',
        component_separators = '',
    },
    sections = {
        lualine_b = {},
        lualine_c = {},
        lualine_x = {},
        lualine_y = {},

        lualine_a = {
            {
                'branch',
                icon = '',
                padding = { left = 1, right = 4 }
            },
            {
                'diff',
                padding = { left = 1, right = 4 }
            },
            {
                'diagnostics',
                padding = { left = 1, right = 4 }
            },
            {
                'filetype',
                icon_only = true,
                colored = false,
                padding = { left = 1 },
                color = function()
                    if vim.bo.modified then
                        return { fg = colors.modified_file }
                    end
                end
            },
            {
                'filename',
                path = 1,
                color = function()
                    if vim.bo.modified then
                        return { fg = colors.modified_file }
                    end
                end
            }
        },
        lualine_z = {
            {
                'progress',
                padding = { left = 4, right = 1 }
            },
            {
                'location',
                padding = { right = 1 }
            },
        },
    },
}

return {
    "nvim-lualine/lualine.nvim",
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
        require("lualine").setup(lualine_config)
    end
}
