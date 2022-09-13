local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())

-- gopls
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
