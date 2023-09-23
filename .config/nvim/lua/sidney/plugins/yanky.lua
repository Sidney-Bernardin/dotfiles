return {
    "gbprod/yanky.nvim",
    config = function()
        require("yanky").setup({
            highlight = {
                on_put = false,
                on_yank = false,
            },
        })

        local keymap = vim.keymap.set
        local opts = { noremap = true }

        -- Use Yanky when using paste.
        keymap({ "n", "x" }, "p", "<Plug>(YankyPutAfter)", opts)
        keymap({ "n", "x" }, "P", "<Plug>(YankyPutBefore)", opts)
        keymap({ "n", "x" }, "gp", "<Plug>(YankyGPutAfter)", opts)
        keymap({ "n", "x" }, "gP", "<Plug>(YankyGPutBefore)", opts)

        -- History navigation
        keymap("n", "<A-n>", "<Plug>(YankyCycleForward)", opts)
        keymap("n", "<A-p>", "<Plug>(YankyCycleBackward)", opts)
    end
}
