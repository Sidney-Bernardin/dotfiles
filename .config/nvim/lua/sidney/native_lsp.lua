local lspconfig = require("lspconfig")

-- Sets native LSP keymaps and auto commands.
local function on_attach(_, bufnr)
    local keymap = vim.keymap.set
    local opts = { noremap = true }

    -- Diagnostics keymaps.
    keymap('n', '[d', vim.diagnostic.goto_prev, opts)
    keymap('n', ']d', vim.diagnostic.goto_next, opts)
    keymap('n', '<leader>d', vim.diagnostic.open_float, opts)
    keymap('n', '<leader>q', vim.diagnostic.setloclist, opts)

    -- LSP keymaps.
    keymap('n', '<leader>a', vim.lsp.buf.code_action, opts)
    keymap('n', '<leader>i', vim.lsp.buf.hover, opts)
    keymap('n', 'gd', vim.lsp.buf.definition, opts)
    keymap('n', 'gt', vim.lsp.buf.type_definition, opts)
    keymap('n', '<leader>gi', vim.lsp.buf.implementation, opts)
    keymap('n', '<leader>rn', vim.lsp.buf.rename, opts)
    keymap('n', '<leader>F', vim.lsp.buf.format, opts)

    -- Format on save.
    vim.api.nvim_create_autocmd('BufWritePre', {
        group = vim.api.nvim_create_augroup("AutoFormat", { clear = true }),
        buffer = bufnr,
        callback = function() vim.lsp.buf.format({ bufnr = bufnr }) end,
    })
end

-- The following table is used when setting up any language server.
lspconfig.util.default_config = vim.tbl_extend("force", lspconfig.util.default_config, {
    capabilities = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities()),
    on_attach = on_attach
})

-- Setup language servers.
lspconfig.gopls.setup({})
lspconfig.tsserver.setup({})
lspconfig.cssls.setup({})
lspconfig.vuels.setup({})
lspconfig.emmet_ls.setup({})
lspconfig.gdscript.setup({})
lspconfig.pyright.setup({})
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
