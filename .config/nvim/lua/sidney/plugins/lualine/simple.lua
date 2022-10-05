return function(colors)
    local config = {
        options = {
            theme = {
                normal  = {
                    a = { bg = colors.bg, fg = colors.fg },
                    b = { bg = colors.bg, fg = colors.fg },
                },
                insert  = {
                    a = { bg = colors.bg, fg = colors.mode_change },
                    z = { bg = colors.bg, fg = colors.fg },
                },
                visual  = {
                    a = { bg = colors.bg, fg = colors.mode_change },
                    z = { bg = colors.bg, fg = colors.fg },
                },
                replace = {
                    a = { bg = colors.bg, fg = colors.mode_change },
                    z = { bg = colors.bg, fg = colors.fg },
                },
                command = {
                    a = { bg = colors.bg, fg = colors.mode_change },
                    z = { bg = colors.bg, fg = colors.fg },
                },
            },
            section_separators = '',
            component_separators = '',
        },
        sections = {
            lualine_c = {},
            lualine_x = {},
            lualine_y = {},

            lualine_a = {
                {
                    'mode',
                    padding = { left = 1 }
                },
            },

            lualine_b = {
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
                    --padding = { right = 1 }
                },
            },
        },
    }
    return config
end
