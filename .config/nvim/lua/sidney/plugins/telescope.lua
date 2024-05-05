return {
    "nvim-telescope/telescope.nvim",

    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-telescope/telescope-file-browser.nvim",
        "nvim-telescope/telescope-symbols.nvim",
        "kyazdani42/nvim-web-devicons",
    },

    config = function()
        local telescope = require("telescope")
        local fb_actions = require("telescope._extensions.file_browser.actions")

        telescope.setup({
            defaults = {
                file_ignore_patterns = { "node_modules" },

                selection_caret = " ",
                entry_prefix = " ",
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
                yank_history = {},
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

        telescope.load_extension("yank_history")
        telescope.load_extension("file_browser")
    end,

    keys = function()
        local builtin = require("telescope.builtin")

        return {
            -- Prompt
            { "<leader>tt", ":Telescope " },

            -- Files
            { "<leader>a",  builtin.find_files },
            { "<bs>",       ":Telescope file_browser path=%:p:h select_buffer=true<CR>" },
            { "<leader>,",  ":Telescope find_files cwd=~/.config/nvim<CR>" },

            -- Telescope all of the things!
            { "<leader>b",  builtin.buffers },
            { "<leader>d",  builtin.diagnostics },
            { "<leader>o",  builtin.lsp_document_symbols },
            { "<leader>gg", builtin.live_grep },
            { "<leader>rr", builtin.registers },
        }
    end
}
