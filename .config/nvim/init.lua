vim.g.mapleader = " "
vim.g.db_ui_use_nerd_fonts = 1



-- =============================================================================
-- OPTIONS

vim.opt.background = "dark"
vim.opt.mouse = ""
vim.opt.winborder = "rounded"
vim.opt.hlsearch = false

vim.opt.list = true
vim.opt.listchars = { tab = "| ", trail = "·", nbsp = "_" }

vim.opt.guicursor = ""
vim.opt.cursorline = true
vim.opt.scrolloff = 8
vim.opt.sidescrolloff = 15

vim.opt.wrap = false
vim.opt.cc = "80"

vim.opt.nu = true
vim.opt.relativenumber = true
vim.opt.signcolumn = "yes"

vim.opt.smartindent = true
vim.opt.expandtab = true
vim.opt.autoindent = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4

vim.opt.backup = false
vim.opt.writebackup = false
vim.opt.swapfile = false
vim.opt.undofile = true



-- =============================================================================
-- LSP (Language Server Protocal)

vim.pack.add({ "https://github.com/nvim/nvim-lspconfig" })

vim.lsp.enable({
    "lua_ls",
    "gopls",

    "vtsls",
    "vue_ls",
})

vim.lsp.config("lua_ls", {
    settings = {
        Lua = {
            workspace = {
                library = vim.api.nvim_get_runtime_file("", true),
            }
        }
    }
})

vim.lsp.config("gopls", {
    settings = {
        gopls = {
            completeUnimported = true,
            usePlaceholders = true,
            buildFlags = {},
        }
    }
})

vim.lsp.config("vtsls", {
    settings = {
        vtsls = {
            tsserver = {
                globalPlugins = {
                    {
                        name = '@vue/typescript-plugin',
                        location = vim.fn.expand '$MASON/packages' ..
                            '/vue-language-server' .. '/node_modules/@vue/language-server',
                        languages = { 'vue' },
                        configNamespace = 'typescript',
                    },
                },
            },
        },
    },
    filetypes = { 'javascript', 'javascriptreact', 'javascript.jsx', 'typescript', 'typescriptreact', 'typescript.tsx', 'vue' },
})

vim.api.nvim_create_autocmd("LspAttach", {
    callback = function(e)
        local client = assert(vim.lsp.get_client_by_id(e.data.client_id))

        -- if client:supports_method("textDocument/completion") then
        --     vim.opt.completeopt = { "fuzzy", "menu", "menuone", "noinsert", "noselect", "popup", "preview" }
        --     vim.lsp.completion.enable(true, client.id, e.buf, { autotrigger = true })
        -- end

        if client:supports_method("textDocument/formatting") then
            vim.api.nvim_create_autocmd("BufWritePre", {
                buffer = e.buf,
                callback = function()
                    vim.lsp.buf.format({ bufnr = e.buf, id = client.id, timeout_ms = 3000 })
                end,
            })
        end
    end,
})

vim.diagnostic.config({
    severity_sort = true,
    virtual_text = true,
    update_in_insert = true,
    float = {
        border = "rounded",
        source = true,
        severity_sort = true,
    },
    jump = {
        float = true,
    },
    signs = {
        text = {
            [vim.diagnostic.severity.ERROR] = "",
            [vim.diagnostic.severity.WARN] = "",
            [vim.diagnostic.severity.INFO] = "",
            [vim.diagnostic.severity.HINT] = "",
        },
    },
})



-- =============================================================================
-- PLUGINS

vim.pack.add({
    "https://github.com/rose-pine/neovim",

    "https://github.com/nvim-treesitter/nvim-treesitter",
    "https://github.com/nvim-treesitter/nvim-treesitter-context",

    "https://github.com/rafamadriz/friendly-snippets",
    "https://github.com/saghen/blink.cmp",

    "https://github.com/stevearc/conform.nvim",
    "https://github.com/williamboman/mason.nvim",

    "https://github.com/ray-x/guihua.lua",
    "https://github.com/ray-x/go.nvim",

    "https://github.com/tpope/vim-dadbod",
    "https://github.com/kristijanhusak/vim-dadbod-completion",
    "https://github.com/kristijanhusak/vim-dadbod-ui",

    "https://github.com/folke/which-key.nvim",
    "https://github.com/windwp/nvim-autopairs",
    "https://github.com/kosayoda/nvim-lightbulb",
    "https://github.com/nvim-lualine/lualine.nvim",

    "https://github.com/nvim-lua/plenary.nvim",
    {
        src = "https://github.com/nvim-telescope/telescope.nvim",
        version = vim.version.range("1.0.0 - 2.0.0")
    },
    "https://github.com/nvim-telescope/telescope-file-browser.nvim",
})

require("rose-pine").setup({
    styles = {
        transparency = true,
        italic = false,
    },
    highlight_groups = {
        CursorLine = { bg = "none" },
        TreesitterContext = { bg = "surface" },
        TreesitterContextLineNumber = { bg = "surface", fg = "rose" },
    },
})

require("nvim-treesitter.configs").setup({
    indent = { enable = true },
    highlight = { enable = true },
})

require("blink.cmp").setup({
    keymap = { preset = "enter" },
    completion = { documentation = { auto_show = true } },
    fuzzy = { implementation = "lua" }
})

require("conform").setup({
    format_on_save = {
        timeout_ms = 3000,
        lsp_format = "fallback",
    },
    formatters_by_ft = {
        lua = { "stylua" },
    },
})

require("mason").setup({
    ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗",
        },
    },
})

require("go").setup()

require("which-key").setup({
    delay = 1000,
    icons = { mappings = false },
    win = { border = "rounded" }
})

require("nvim-autopairs").setup({
    disable_filetype = { "TelescopePrompt" },
})

require("nvim-lightbulb").setup({
    autocmd = { enabled = true },
    sign = {
        enabled = true,
        text = "",
    },
})

require("lualine").setup({
    options = {
        component_separators = { left = "", right = "" },
        section_separators = { left = " ", right = " " },
    },
})

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
            mappings = {
                ["i"] = {
                    ["<C-h>"] = require("telescope._extensions.file_browser.actions").goto_home_dir,
                },
            },
        },
    },
})

require("telescope").load_extension("file_browser")




-- =============================================================================
-- KEYMAPS

vim.keymap.set("n", "<leader>s", ":w<CR>")

vim.keymap.set("n", "<C-n>", ":bnext<CR>")
vim.keymap.set("n", "<C-p>", ":bprev<CR>")

vim.keymap.set("n", "<C-j>", ":cnext<CR>zz")
vim.keymap.set("n", "<C-k>", ":cprev<CR>zz")

vim.keymap.set("n", "<C-w>%", ":vsplit<CR>")
vim.keymap.set("n", "<C-w>\"", ":split<CR>")

vim.keymap.set("n", "G", "Gzz", { noremap = true })
vim.keymap.set("n", "<C-d>", "<C-d>zz", { noremap = true })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { noremap = true })
vim.keymap.set("n", "n", "nzzzV", { noremap = true })
vim.keymap.set("n", "N", "NzzzV", { noremap = true })
vim.keymap.set("n", "J", "mzJ`z", { noremap = true })

vim.keymap.set("x", "<leader>p", '"_dP', { noremap = true })

vim.keymap.set("i", ",", ",<c-g>u", { noremap = true })
vim.keymap.set("i", ".", ".<c-g>u", { noremap = true })

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "<leader>,", ":e ~/.config/nvim/init.lua<CR>")

vim.keymap.set("n", "<leader>m", function()
    if vim.opt.mouse._value == "" then
        vim.opt.mouse = "a"
        print("󰍽 Mouse is ON 󰍽")
    else
        vim.opt.mouse = ""
        print("󰍾 Mouse is OFF 󰍾")
    end
end, { noremap = true })

-- Change distance of <C-d> and <C-u>
vim.cmd([[nnoremap <expr> <C-d> (winheight(0) / 3) . "<C-d>"]])
vim.cmd([[nnoremap <expr> <C-u> (winheight(0) / 3) . "<C-u>"]])

-- Telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files)
vim.keymap.set('n', '<leader>fg', builtin.live_grep)
vim.keymap.set('n', '<leader>fb', builtin.buffers)
vim.keymap.set('n', '<leader>fh', builtin.help_tags)
vim.keymap.set('n', '<leader>fr', builtin.registers)
vim.keymap.set('n', '<leader>fm', builtin.lsp_document_symbols)
vim.keymap.set('n', '<bs>', ":Telescope file_browser path=%:p:h select_buffer=true<CR>")

-- Dadbod
vim.keymap.set('n', '<leader>DB', ":DBUIToggle<CR>")

-- Which Key
vim.keymap.set('n', '<leader>?', function()
    require("which-key").show({ global = false })
end)



-- =============================================================================
-- AUTO COMMANDS

local core_auto_group = vim.api.nvim_create_augroup("CoreGroup", { clear = true })

-- Highlights yanked lines.
vim.api.nvim_create_autocmd("TextYankPost", {
    group = core_auto_group,
    callback = function()
        vim.highlight.on_yank({ higroup = "Visual", timeout = 300 })
    end,
})



-- =============================================================================
-- COLORSCHEME

vim.cmd([[colorscheme rose-pine]])
