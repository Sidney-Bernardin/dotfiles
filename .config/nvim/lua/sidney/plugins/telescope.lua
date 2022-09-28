require('telescope').setup({
    defaults = {
        borderchars = { " ", " ", " ", " ", " ", " ", " ", " " },
        sorting_strategy = "ascending",
        layout_strategy = "horizontal",
        layout_config = {
            horizontal = {
                prompt_position = "top",
            },
            vertical = {
                mirror = false,
            },
        },
    }
})
