return {
    {
        "rose-pine/neovim",
        name = "rose-pine",
        config = function()
            require("rose-pine").setup({
                styles = {
                    transparency = true,
                    italic = false,
                },
                highlight_groups = {
                    CursorLine = { bg = "none" },
                    TreesitterContext = { bg = "surface" },
                    TreesitterContextLineNumber = { bg = "surface", fg = "rose" },
                    WinBar = { bg = "none" },
                    WinBarNC = { bg = "none" },
                },
            })

            vim.cmd("colorscheme rose-pine")
        end
    },
}
