return require('packer').startup(function(use)

    use('wbthomason/packer.nvim')
    use('nvim-lua/plenary.nvim') -- For a handful of other plugins to work.
    use('ray-x/guihua.lua') -- For some go.nvim features to work.

    -- Color scheme
    use('morhetz/gruvbox')

    -- nvim-cmp
    use('hrsh7th/nvim-cmp')
    use('hrsh7th/cmp-nvim-lsp')
    use('hrsh7th/cmp-buffer')
    use('hrsh7th/cmp-path')
    use('saadparwaiz1/cmp_luasnip')

    -- Snippets
    use('L3MON4D3/LuaSnip')
    use('rafamadriz/friendly-snippets')

    -- LSP
    use('williamboman/mason.nvim')
    use('neovim/nvim-lspconfig')
    use({ 'jose-elias-alvarez/null-ls.nvim', branch = 'main' })

    -- Treesitter
    use('nvim-treesitter/nvim-treesitter')
    use('nvim-treesitter/nvim-treesitter-context')

    -- Language spicific
    use('ray-x/go.nvim')

    -- Dap
    use('mfussenegger/nvim-dap')
    use('leoluz/nvim-dap-go')
    use({ "rcarriga/nvim-dap-ui", requires = { "mfussenegger/nvim-dap" } })
    use('theHamsta/nvim-dap-virtual-text')
    use('nvim-telescope/telescope-dap.nvim')

    -- File navigation
    use({ 'nvim-telescope/telescope.nvim', tag = '0.1.0' })
    use('nvim-telescope/telescope-symbols.nvim')
    use('ThePrimeagen/harpoon')

    -- Git
    use('tpope/vim-fugitive')

    -- Flash Step!
    use('windwp/nvim-autopairs')
    use('jinh0/eyeliner.nvim')
    use('tpope/vim-commentary')
    use('gbprod/yanky.nvim')

    -- Cool stuff
    use('simrat39/symbols-outline.nvim')
    use('kyazdani42/nvim-web-devicons')
    use('lukas-reineke/indent-blankline.nvim')
    use({
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    })
end)
