local colors = {
    darkgray = '#3c3836',
    blue = '#83a598',
    yellow = '#d79921',
    red = '#fe8019',
    green = '#83a598',
}

return {
    options = {
        theme = {
            normal  = { a = { bg = colors.darkgray } },
            insert  = { a = { bg = colors.darkgray, fg = colors.blue } },
            visual  = { a = { bg = colors.darkgray, fg = colors.yellow } },
            replace = { a = { bg = colors.darkgray, fg = colors.red } },
            command = { a = { bg = colors.darkgray, fg = colors.green } },
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
                "%{pathshorten(expand('%F'), 3)}",
                icon = '',
                padding = { left = 5 }
            }
        },
        lualine_z = {
            {
                'progress',
                icon = '',
                padding = {}
            },
            {
                'location',
                padding = { right = 1 }
            },
        },
    },
}
