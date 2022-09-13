return require('packer').startup(function(use)

    -- Packer can manage itself.
    use 'wbthomason/packer.nvim'

    -- Color Scheme
    use 'morhetz/gruvbox'

    -- Nvim LSP and CMP
    use 'neovim/nvim-lspconfig'
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'L3MON4D3/LuaSnip'
    use 'saadparwaiz1/cmp_luasnip'

    -- Plenary
    use 'nvim-lua/plenary.nvim'

    -- Telescope    
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    -- Treesitter
    use 'nvim-treesitter/nvim-treesitter'

    -- Status Bar
    use 'vim-airline/vim-airline'

    -- Git
    use 'tpope/vim-fugitive'

    -- Flash Step!
    use 'windwp/nvim-autopairs'
    use 'unblevable/quick-scope'
    use 'machakann/vim-highlightedyank'
    use {
        'ThePrimeagen/harpoon',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
end)
