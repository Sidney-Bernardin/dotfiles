return {
    "nvim-treesitter/nvim-treesitter",
    dependencies = { "nvim-treesitter/nvim-treesitter-context" },
    build = ":TSUpdate",
    config = function()
        require("nvim-treesitter.configs").setup({
            indent = { enable = true },
            highlight = {
                enable = true,
                -- disable = { "html", "css", "scss", "vue" },
            },
        })
    end,
}
