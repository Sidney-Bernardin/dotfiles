return {
    {
        "nvim-telescope/telescope.nvim",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-telescope/telescope-file-browser.nvim",
            "nvim-telescope/telescope-symbols.nvim",
            "nvim-tree/nvim-web-devicons",
        },
        config = function()
            require("telescope").setup({
                defaults = {
                    file_ignore_patterns = { "node_modules", "%_templ.go" },
                    sorting_strategy = "ascending",
                    layout_strategy = "horizontal",
                    layout_config = {
                        horizontal = { prompt_position = "top", },
                        vertical = { mirror = false, },
                    },
                },
                extensions = {
                    file_browser = {
                        hijack_netrw = true,
                    },
                },
            })
            require("telescope").load_extension("file_browser")
        end,
        keys = function()
            local builtin = require("telescope.builtin")
            return {
                { "<leader>ff", builtin.find_files },
                { "<leader>fg", builtin.live_grep },
                { "<leader>fb", builtin.buffers },
                { "<leader>fh", builtin.help_tags },
                { "<leader>fr", builtin.registers },
                { "<leader>fm", builtin.lsp_document_symbols },
                { "<bs>",       ":Telescope file_browser path=%:p:h select_buffer=true<CR>" },
            }
        end,
    },
}
