return {
    "rafamadriz/friendly-snippets",
    {
        "vague2k/vague.nvim",
        lazy = false,
        priority = 1000,
        config = function()
            require("vague").setup({
                transparent = true,
                italic = false,
            })
            vim.cmd([[colorscheme vague]])
        end,
    },
    {
        "nvim-treesitter/nvim-treesitter",
        opts = {
            auto_install = true,
            indent = { enable = true },
            highlight = { enable = true },
        },
    },
    {
        "nvim-treesitter/nvim-treesitter-context",
        dependencies = { "nvim-treesitter/nvim-treesitter" },
        opts = {
            multiline_threshold = 5,
        },
    },
    {
        "ray-x/go.nvim",
        dependencies = { "ray-x/guihua.lua" },
        config = function()
            require("go").setup()
        end,
    },
    {

        "folke/which-key.nvim",
        opts = {
            delay = 1000,
            icons = { mappings = false },
            win = { border = "rounded" }
        },
        keys = {
            { '<leader>?', function()
                require("which-key").show({ global = false })
            end },
        },
    },
    {
        "kosayoda/nvim-lightbulb",
        opts = {
            autocmd = { enabled = true },
            sign = {
                enabled = true,
                text = "",
            },
        },
    },
    {
        "nvim-lualine/lualine.nvim",
        opts = {
            options = {
                component_separators = { left = "", right = "" },
                section_separators = { left = "", right = "" },
            },
        },
    },
}
