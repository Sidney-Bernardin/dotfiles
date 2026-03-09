return {
    {
        "Sidney-Bernardin/tesser.nvim",
        -- dir = "~/projects/neovim_plugins/tesser.nvim",
        config = function()
            local tesser = require("tesser")

            vim.keymap.set("n", "<leader>t", tesser.edit)

            for key in tesser.keys() do
                vim.keymap.set("n",
                    ("<M-%s>"):format(key),
                    function() tesser.open(key) end,
                    { noremap = true })

                vim.keymap.set("n",
                    ("<leader><leader>%s"):format(key),
                    function() tesser.set(key) end)
            end
        end,
    },
    {
        "nvim-telescope/telescope.nvim",
        tag = "0.1.9",
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
                { "<leader>fc", ":Telescope find_files cwd=~/.config/nvim<CR>" }
            }
        end,
    },
}
