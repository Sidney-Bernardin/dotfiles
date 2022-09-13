local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())

-- lspconfig gopls.
require'lspconfig'.gopls.setup{
    capabilities = capabilities,
    on_attach = function()

        -- Hover info.
        vim.keymap.set("n", "<leader>i", vim.lsp.buf.hover, { buffer=0 })

        -- Go to definition.
        vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, { buffer=0 })

        -- Go to type definition.
        vim.keymap.set("n", "<leader>gt", vim.lsp.buf.type_definition, { buffer=0 })

        -- Go to implementation definition.
        vim.keymap.set("n", "<leader>gi", vim.lsp.buf.implementation, { buffer=0 })

        -- Renaming.
        vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, { buffer=0 })

        -- Diagnostic next/prev.
        vim.keymap.set("n", "<leader>dn", vim.diagnostic.goto_next, { buffer=0 })
        vim.keymap.set("n", "<leader>dp", vim.diagnostic.goto_prev, { buffer=0 })
    end,
}

vim.opt.completeopt={"menu", "menuone", "noselect"}

-- Set up nvim-cmp.
local cmp = require'cmp'

cmp.setup({
    snippet = {
        expand = function(args)
            require('luasnip').lsp_expand(args.body)
        end,
    },
    window = {
        -- completion = cmp.config.window.bordered(),
        -- documentation = cmp.config.window.bordered(),
    },
    mapping = cmp.mapping.preset.insert({
        ['<C-b>'] = cmp.mapping.scroll_docs(-4),
        ['<C-f>'] = cmp.mapping.scroll_docs(4),
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<C-e>'] = cmp.mapping.abort(),
        ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
    }),
    sources = cmp.config.sources({
        { name = 'nvim_lsp' },
        { name = 'luasnip' },
    }, {
        { name = 'buffer' },
    })
})

cmp.setup.filetype('gitcommit', {
    sources = cmp.config.sources({
        { name = 'cmp_git' },
    }, {
        { name = 'buffer' },
    })
})
