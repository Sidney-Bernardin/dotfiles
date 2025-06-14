return {
    {
        "ThePrimeagen/harpoon",
        branch = "harpoon2",
        opts = {
            settings = {
                save_on_toggle = true,
            },
        },
        keys = function()
            return {
                { "<leader>hh", function() require("harpoon"):list():add() end,                                    desc = "Harpoon file" },
                { "<leader>hm", function() require("harpoon").ui:toggle_quick_menu(require("harpoon"):list()) end, desc = "Harpoon menu" },

                { "<A-a>",      function() require("harpoon"):list():select(1) end },
                { "<A-s>",      function() require("harpoon"):list():select(2) end },
                { "<A-d>",      function() require("harpoon"):list():select(3) end },
                { "<A-f>",      function() require("harpoon"):list():select(4) end },
                { "<A-g>",      function() require("harpoon"):list():select(5) end },

                { "<A-h>",      function() require("harpoon"):list():select(6) end },
                { "<A-j>",      function() require("harpoon"):list():select(7) end },
                { "<A-k>",      function() require("harpoon"):list():select(8) end },
                { "<A-l>",      function() require("harpoon"):list():select(9) end },
                { "<A-;>",      function() require("harpoon"):list():select(10) end },
            }
        end,
    },
    {
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
                    file_ignore_patterns = { "node_modules", "%_templ.go" },

                    -- selection_caret = "",
                    -- entry_prefix = "",
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
    },
}
