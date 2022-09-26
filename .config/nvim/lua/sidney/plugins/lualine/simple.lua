return function(colors)
    local config = {
        options = {
            theme = {
                normal  = { a = { bg = colors.bg } },
                insert  = { a = { bg = colors.bg, fg = colors.mode_change } },
                visual  = { a = { bg = colors.bg, fg = colors.mode_change } },
                replace = { a = { bg = colors.bg, fg = colors.mode_change } },
                command = { a = { bg = colors.bg, fg = colors.mode_change } },
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
                    'mode',
                    padding = { left = 1 }
                },
                {
                    'branch',
                    icon = '',
                    padding = { left = 5 }
                },
                {
                    'diff',
                    padding = { left = 1 }
                },
                {
                    'diagnostics',
                    padding = { left = 5 }
                },
                {
                    "filename",
                    path = 1,
                    shorting_target = 100,
                    icon = '',
                    padding = { left = 5 }
                }
            },
            lualine_z = {
                {
                    'progress',
                    icon = '',
                    padding = { left = 5 }
                },
                {
                    'location',
                    padding = { right = 1 }
                },
            },
        },
    }
    return config
end
