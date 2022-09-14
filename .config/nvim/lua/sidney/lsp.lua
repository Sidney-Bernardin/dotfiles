local function on_attach()

    local keymap = vim.keymap.set
    local opts = { noremap = true }

    -- Diagnostics keymaps.
    keymap('n', '[d', vim.diagnostic.goto_prev, opts)
    keymap('n', ']d', vim.diagnostic.goto_next, opts)
    keymap('n', '<leader>d', vim.diagnostic.open_float, opts)
    keymap('n', '<leader>q', vim.diagnostic.setloclist, opts)

    -- LSP keymaps.
    keymap("n", "<leader>a", vim.lsp.buf.code_action, opts)
    keymap("n", "<leader>i", vim.lsp.buf.hover, opts)
    keymap("n", "<leader>gd", vim.lsp.buf.definition, opts)
    keymap("n", "<leader>gt", vim.lsp.buf.type_definition, opts)
    keymap("n", "<leader>gi", vim.lsp.buf.implementation, opts)
    keymap("n", "<leader>rn", vim.lsp.buf.rename, opts)

    -- Formatting on save.
    vim.api.nvim_create_autocmd('BufWritePre', {
        pattern = '*',
        callback = function() vim.lsp.buf.formatting_sync() end,
    })
end

-- new_config returns an lspconfig configuration.
local function new_config(additional_data)

    local base_config = {
        capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities()),
        on_attach = on_attach,
        settings = {
            Lua = {
                diagnostics = {
                    globals = { 'vim' }
                }
            }
        }
    }

    -- Return the base config combined with the additional data.
    return vim.tbl_deep_extend('force', base_config, additional_data or {})
end

-- Setup lspconfig and nvim-lsp-installer.
local lsp_installer = require("nvim-lsp-installer")
local lspconfig = require("lspconfig")
lsp_installer.setup({})

-- Setup an lspconfig configuration for each installed language server.
for _, server in ipairs(lsp_installer.get_installed_servers()) do
    lspconfig[server.name].setup(new_config())
end
