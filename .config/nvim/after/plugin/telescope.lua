local ok, telescope = pcall(require, "telescope")
if not ok then return end



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
        },
    },
})



-- Load Telescope extensions
telescope.load_extension("yank_history")
telescope.load_extension("file_browser")



local keymap = vim.keymap.set
local opts = { noremap = true }

-- Prompt
keymap("n", "<leader>tt", ":Telescope ", opts)

-- Files
keymap("n", "<leader>a", ":Telescope find_files<CR>", opts)
keymap("n", "<leader>,", ":Telescope find_files cwd=~/.config/nvim<CR>", opts)
keymap("n", "<bs>", ":Telescope file_browser path=%:p:h select_buffer=true<CR>", opts)
keymap("n", "r<bs>", ":Telescope file_browser<CR>", opts)

-- Telescope all of the things.
keymap("n", "<leader>b", ":Telescope buffers<CR>", opts)
keymap("n", "<leader>d", ":Telescope diagnostics<CR>", opts)
keymap("n", "<leader>o", ":Telescope lsp_document_symbols<CR>", opts)
keymap("n", "<leader>gg", ":Telescope live_grep<CR>", opts)
keymap("n", "<leader>rr", ":Telescope registers<CR>", opts)
