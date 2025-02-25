return {
    "nvim-telescope/telescope.nvim",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-telescope/telescope-file-browser.nvim",
        "nvim-telescope/telescope-symbols.nvim",
        "nvim-tree/nvim-web-devicons",
    },
    config = function()
        local telescope = require("telescope")
        local fb_actions = require("telescope._extensions.file_browser.actions")

        telescope.setup({
            defaults = {
                file_ignore_patterns = { "node_modules" },

                selection_caret = "",
                entry_prefix = "",
                prompt_prefix = " ",
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
            },
            extensions = {
                file_browser = {
                    hijack_netrw = true,
                    mappings = {
                        ["i"] = {
                            ["<bs>"] = fb_actions.backspace,
                        },
                    },
                },
            },
        })

        telescope.load_extension("file_browser")
    end,
    keys = function()
        local builtin = require("telescope.builtin")

        return {
            { "<leader>ff", builtin.find_files },
            { "<leader>fb", builtin.buffers },
            { "<leader>fd", builtin.diagnostics },
            { "<leader>fm", builtin.lsp_document_symbols },
            { "<leader>fg", builtin.live_grep },
            { "<leader>fr", builtin.registers },
            { "<bs>",       ":Telescope file_browser path=%:p:h select_buffer=true<CR>" },
            { "<leader>,",  ":Telescope find_files cwd=~/.config/nvim<CR>" },
        }
    end,
}
