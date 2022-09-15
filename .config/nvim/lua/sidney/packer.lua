return require('packer').startup(function(use)

    -- Packer can manage itself.
    use 'wbthomason/packer.nvim'

    -- Color Scheme
    use 'morhetz/gruvbox'
    use 'nvim-treesitter/nvim-treesitter'

    -- Nvim LSP
    use "neovim/nvim-lspconfig"
    use "williamboman/nvim-lsp-installer"

    -- Completion
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'L3MON4D3/LuaSnip'
    use 'saadparwaiz1/cmp_luasnip'

    -- Formatting
    use 'prettier/vim-prettier'

    -- Telescope
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }

    -- Git
    use 'tpope/vim-fugitive'

    -- Flash Step!
    use 'windwp/nvim-autopairs'
    use 'unblevable/quick-scope'
    use {
        'ThePrimeagen/harpoon',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }

    -- Cool Stuff
    use 'nvim-lua/plenary.nvim'
    use 'machakann/vim-highlightedyank'
    use 'simrat39/symbols-outline.nvim'
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }
end)
