-- Install lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({ "git", "clone", "--filter=blob:none", "https://github.com/folke/lazy.nvim.git", "--branch=stable",
        lazypath })
end
vim.opt.rtp:prepend(lazypath)



require("lazy").setup({

    -- Dependencies
    "nvim-lua/plenary.nvim",
    "kyazdani42/nvim-web-devicons",

    -- Color
    "morhetz/gruvbox",

    -- nvim-cmp
    "hrsh7th/nvim-cmp",
    "hrsh7th/cmp-nvim-lsp",
    "hrsh7th/cmp-buffer",
    "hrsh7th/cmp-path",
    "saadparwaiz1/cmp_luasnip",

    -- Snippets
    "L3MON4D3/LuaSnip",
    "rafamadriz/friendly-snippets",

    -- LSP
    "williamboman/mason.nvim",
    "neovim/nvim-lspconfig",
    "neovim/nvim-lspconfig",
    "jose-elias-alvarez/null-ls.nvim",

    -- Treesitter
    "nvim-treesitter/nvim-treesitter",
    "nvim-treesitter/nvim-treesitter-context",

    -- Golang
    "ray-x/go.nvim",

    -- nvim-dap
    "mfussenegger/nvim-dap",
    "leoluz/nvim-dap-go",
    "rcarriga/nvim-dap-ui",
    "theHamsta/nvim-dap-virtual-text",
    "nvim-telescope/telescope-dap.nvim",

    -- File navigation
    "nvim-telescope/telescope.nvim",
    "nvim-telescope/telescope-file-browser.nvim",
    "nvim-telescope/telescope-symbols.nvim",
    "ThePrimeagen/harpoon",

    -- Other cool stuff.
    "tpope/vim-fugitive",
    "gbprod/yanky.nvim",
    "nvim-lualine/lualine.nvim",
    "windwp/nvim-autopairs",
    "tpope/vim-commentary",
    "lukas-reineke/indent-blankline.nvim",
    "kosayoda/nvim-lightbulb",
})
