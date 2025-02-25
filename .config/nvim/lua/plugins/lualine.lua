return {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
        local p = require("gruvbox").palette

        local colors = {
            branch = p.bright_purple,
            unsaved = p.light0_hard,
            theme = {
                visual = { a = { fg = p.dark0, bg = p.light0 } },
                replace = { a = { fg = p.dark0, bg = p.light0 } },
                insert = { a = { fg = p.dark0, bg = p.bright_yellow } },
                normal = {
                    a = { fg = p.dark0, bg = p.neutral_yellow },
                    b = { fg = p.light2, bg = p.dark1 },
                    c = { fg = p.light2 },
                },
            },
        }

        require("lualine").setup({
            options = {
                component_separators = { left = "", right = "" },
                section_separators = { left = " ", right = " " },
                theme = colors.theme,
            },
            sections = {
                lualine_a = { "mode" },
                lualine_b = {
                    { "branch", color = { fg = colors.branch } },
                    {
                        "filename",
                        path = 1,
                        color = function()
                            if vim.bo.modified then
                                return { fg = colors.unsaved }
                            end
                        end,
                    },
                    "diagnostics",
                },
                lualine_c = {},
                lualine_x = {},
                lualine_y = { "diff", "filetype", "progress" },
                lualine_z = { "location" },
            },
            inactive_sections = {
                lualine_a = { "filename" },
                lualine_b = {},
                lualine_c = {},
                lualine_x = {},
                lualine_y = {},
                lualine_z = { "location" },
            },
        })
    end,
}
