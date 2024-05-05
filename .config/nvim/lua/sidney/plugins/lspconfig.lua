local function on_attach(_, bufnr)
    local keymap = vim.keymap.set
    local opts = { noremap = true }

    keymap('n', '<leader>ca', vim.lsp.buf.code_action, opts)
    keymap('n', '<leader>i', vim.lsp.buf.hover, opts)
    keymap('n', '<leader>gd', vim.lsp.buf.definition, opts)
    keymap('n', '<leader>gt', vim.lsp.buf.type_definition, opts)
    keymap('n', '<leader>gi', vim.lsp.buf.implementation, opts)
    keymap('n', '<leader>rn', vim.lsp.buf.rename, opts)
    keymap('n', '<leader>f', vim.lsp.buf.format, opts)

    keymap('n', '[d', vim.diagnostic.goto_prev, opts)
    keymap('n', ']d', vim.diagnostic.goto_next, opts)
    keymap('n', '<leader>d', vim.diagnostic.open_float, opts)
    keymap('n', '<leader>q', vim.diagnostic.setloclist, opts)

    -- Format on save
    vim.api.nvim_create_autocmd('BufWritePre', {
        group = vim.api.nvim_create_augroup("AutoFormat", { clear = true }),
        buffer = bufnr,
        callback = function() vim.lsp.buf.format({ bufnr = bufnr }) end,
    })
end

return {
    "neovim/nvim-lspconfig",

    config = function()
        local lspconfig = require("lspconfig")
        local sign_def = vim.fn.sign_define

        -- Change diagnostic signs
        sign_def('DiagnosticSignError', { texthl = 'DiagnosticSignError', text = '', numhl = '' })
        sign_def('DiagnosticSignWarn', { texthl = 'DiagnosticSignWarn', text = '', numhl = '' })
        sign_def('DiagnosticSignInfo', { texthl = 'DiagnosticSignInfo', text = '', numhl = '' })
        sign_def('DiagnosticSignHint', { texthl = 'DiagnosticSignHint', text = '', numhl = '' })

        -- Default LSP configuration.
        lspconfig.util.default_config = vim.tbl_extend("force", lspconfig.util.default_config, {
            capabilities = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities()),
            on_attach = on_attach
        })

        -- Specific LSP configurations.
        lspconfig.emmet_ls.setup({
            filetypes = { "html", "templ", "htmx" }
        })
        lspconfig.htmx.setup({ filetypes = { "html", "templ" } })
        lspconfig.cssls.setup({
            capabilities = (function()
                local c = vim.lsp.protocol.make_client_capabilities()
                c.textDocument.completion.completionItem.snippetSupport = true
                return c
            end)()
        })
        lspconfig.tsserver.setup({})
        lspconfig.vuels.setup({})
        lspconfig.svelte.setup({})
        lspconfig.pyright.setup({})
        lspconfig.gdscript.setup({})
        lspconfig.templ.setup({})
        lspconfig.gopls.setup({
            settings = {
                gopls = {
                    completeUnimported = true,
                    usePlaceholders = true,
                }
            }
        })
        lspconfig.lua_ls.setup({
            settings = {
                Lua = {
                    diagnostics = {
                        globals = { 'vim' }
                    }
                }
            }
        })
        lspconfig.rust_analyzer.setup({
            cmd = { 'rustup', 'run', 'stable', 'rust-analyzer' }
        })
    end
}
