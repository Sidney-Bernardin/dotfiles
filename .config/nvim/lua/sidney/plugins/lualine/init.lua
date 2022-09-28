-- require('lualine').setup({})

-- Simple config with a custom Gruvbox themed colors.
require('lualine').setup(require('sidney.plugins.lualine.simple')({
    bg = 237, -- Gruvbox bg1.
    fg = 223, -- Gruvbox fg1.
    mode_change = 214, -- Gruvbox yellow.
}))
