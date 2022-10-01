return require('packer').startup(function(use)

    use('wbthomason/packer.nvim')
    use('nvim-lua/plenary.nvim')

    -- Color Scheme
    use('morhetz/gruvbox')

    -- nvim-cmp
    use('hrsh7th/nvim-cmp')
    use('hrsh7th/cmp-nvim-lsp')
    use('hrsh7th/cmp-buffer')
    use('hrsh7th/cmp-path')
    use('saadparwaiz1/cmp_luasnip')

    -- Snippets
    use('L3MON4D3/LuaSnip')

    -- LSP
    use('neovim/nvim-lspconfig')
    use('williamboman/nvim-lsp-installer')
    use({ 'jose-elias-alvarez/null-ls.nvim', branch = 'main' })

    -- Treesitter
    use('nvim-treesitter/nvim-treesitter')
    use('nvim-treesitter/nvim-treesitter-context')

    -- File Navigation.
    use({ 'nvim-telescope/telescope.nvim', tag = '0.1.0' })
    use('ThePrimeagen/harpoon')

    -- Git
    use('tpope/vim-fugitive')

    -- Flash Step!
    use('windwp/nvim-autopairs')
    use('jinh0/eyeliner.nvim')

    -- Cool Stuff
    use('simrat39/symbols-outline.nvim')
    use({
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    })
end)
