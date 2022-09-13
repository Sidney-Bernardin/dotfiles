local on_attach = function(_, bufnr)

    local bufopts = { buffer = bufnr }

    -- Formatting on save.
    vim.cmd('autocmd BufWritePre * lua vim.lsp.buf.formatting_sync()')

    -- Code actions.
    vim.keymap.set("n", "<leader>a", vim.lsp.buf.code_action, bufopts)

    -- Hover info.
    vim.keymap.set("n", "<leader>i", vim.lsp.buf.hover, bufopts)

    -- Go to definition.
    vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, bufopts)

    -- Go to type definition.
    vim.keymap.set("n", "<leader>gt", vim.lsp.buf.type_definition, bufopts)

    -- Go to implementation definition.
    vim.keymap.set("n", "<leader>gi", vim.lsp.buf.implementation, bufopts)

    -- Renaming.
    vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, bufopts)
end



-- [[ ===== Diagnostic keymaps. ===== ]] --

-- Diagnostics navigation.
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { noremap = true })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { noremap = true })

-- View diagnostics.
vim.keymap.set('n', '<leader>d', vim.diagnostic.open_float, { noremap = true })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { noremap = true })



--[[ ===== Auto configure language servers. ===== ]] --

local lsp_installer = require("nvim-lsp-installer")
local lspconfig = require("lspconfig")
lsp_installer.setup {}

-- Change the default configuration to be applied to all servers.
lspconfig.util.default_config = vim.tbl_extend(
    "force",
    lspconfig.util.default_config,
    {
        capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities()),
        on_attach = on_attach
    }
)

-- Loop through all of the installed servers and set it up via lspconfig.
for _, server in ipairs(lsp_installer.get_installed_servers()) do
    lspconfig[server.name].setup {}
end
