-- require('lualine').setup({})

-- Simple config with a custom Gruvbox theme.
require('lualine').setup(require('sidney.plugins.lualine.simple')({
    bg = 237, -- Gruvbox bg1.
    fg = 250, -- Gruvbox fg2.
    modified_filename = 223, -- Gruvbox fg1.
}))
