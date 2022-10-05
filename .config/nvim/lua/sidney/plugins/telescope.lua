local telescope = require('telescope')

telescope.setup({
    defaults = {
        borderchars = { ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ' },
        sorting_strategy = 'ascending',
        layout_strategy = 'horizontal',
        layout_config = {
            horizontal = {
                prompt_position = 'top',
            },
            vertical = {
                mirror = false,
            },
        },
    },
    extensions = {
        yank_history = {}
    }
})

-- Load Telescope extensions.
require('telescope').load_extension('yank_history')
