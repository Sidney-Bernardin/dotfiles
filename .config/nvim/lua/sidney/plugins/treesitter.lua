return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",

    dependencies = {
        "nvim-treesitter/nvim-treesitter-context",
    },

    config = function()
        require("nvim-treesitter.configs").setup({
            ensure_installed = {},
            auto_install = true,
            indent = { enable = true },
            highlight = {
                enable = true,
                disable = { "html", "css", "scss", "vue" },
            }
        })
    end
}
