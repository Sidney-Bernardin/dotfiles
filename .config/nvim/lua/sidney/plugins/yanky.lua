return {
    "gbprod/yanky.nvim",

    config = function()
        require("yanky").setup({
            highlight = {
                on_put = false,
                on_yank = false,
            },
        })
    end,

    keys = {
        -- Use Yanky when using paste.
        { mode = { "n", "x" }, "p",                         "<Plug>(YankyPutAfter)" },
        { mode = { "n", "x" }, "P",                         "<Plug>(YankyPutBefore)" },
        { mode = { "n", "x" }, "gp",                        "<Plug>(YankyGPutAfter)" },
        { mode = { "n", "x" }, "gP",                        "<Plug>(YankyGPutBefore)" },

        -- History navigation
        { "<A-n>",             "<Plug>(YankyCycleForward)", },
        { "<A-p>",             "<Plug>(YankyCycleBackward)" },
    }
}
