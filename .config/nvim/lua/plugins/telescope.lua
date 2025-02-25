return {
    "nvim-telescope/telescope.nvim",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-telescope/telescope-file-browser.nvim",
        "nvim-telescope/telescope-symbols.nvim",
        "nvim-telescope/telescope-dap.nvim",
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
        telescope.load_extension("dap")
    end,
    keys = function()
        local builtin = require("telescope.builtin")

        return {
            { "<leader>ff", builtin.find_files,                                          desc = "Find files" },
            { "<leader>fb", builtin.buffers,                                             desc = "Find buffers" },
            { "<leader>fd", builtin.diagnostics,                                         desc = "Find diagnostics" },
            { "<leader>fm", builtin.lsp_document_symbols,                                desc = "Find LSP symbols" },
            { "<leader>fg", builtin.live_grep,                                           desc = "Find grep" },
            { "<leader>fr", builtin.registers,                                           desc = "Find registers" },
            { "<leader>,",  ":Telescope find_files cwd=~/.config/nvim<CR>",              desc = "Find config" },
            { "<bs>",       ":Telescope file_browser path=%:p:h select_buffer=true<CR>", desc = "Browse PWD" },
        }
    end,
}
