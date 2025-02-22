local function on_attach(_, bufnr)
    vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { noremap = true })
    vim.keymap.set("n", "<leader>i", vim.lsp.buf.hover, { noremap = true })
    vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, { noremap = true })
    vim.keymap.set("n", "<leader>gt", vim.lsp.buf.type_definition, { noremap = true })
    vim.keymap.set("n", "<leader>gi", vim.lsp.buf.implementation, { noremap = true })
    vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, { noremap = true })
    vim.keymap.set("n", "<leader>f", vim.lsp.buf.format, { noremap = true })

    vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, { noremap = true })
    vim.keymap.set("n", "]d", vim.diagnostic.goto_next, { noremap = true })
    vim.keymap.set("n", "<leader>d", vim.diagnostic.open_float, { noremap = true })
    vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { noremap = true })

    -- Format on save
    vim.api.nvim_create_autocmd("BufWritePre", {
        group = vim.api.nvim_create_augroup("MyFormatGroup", { clear = true }),
        buffer = bufnr,
        callback = function()
            vim.lsp.buf.format({ bufnr = bufnr })
        end,
    })
end

return {
    "neovim/nvim-lspconfig",

    config = function()
        local lspconfig = require("lspconfig")

        -- Change diagnostic signs
        vim.fn.sign_define("DiagnosticSignError", { texthl = "DiagnosticSignError", text = "", numhl = "" })
        vim.fn.sign_define("DiagnosticSignWarn", { texthl = "DiagnosticSignWarn", text = "", numhl = "" })
        vim.fn.sign_define("DiagnosticSignInfo", { texthl = "DiagnosticSignInfo", text = "", numhl = "" })
        vim.fn.sign_define("DiagnosticSignHint", { texthl = "DiagnosticSignHint", text = "", numhl = "" })

        -- General LSP configuration.
        lspconfig.util.default_config = vim.tbl_extend("force", lspconfig.util.default_config, {
            capabilities = require("cmp_nvim_lsp").default_capabilities(vim.lsp.protocol.make_client_capabilities()),
            on_attach = on_attach
        })

        -- Specific LSP configurations.
        lspconfig.lua_ls.setup({
            settings = {
                Lua = {
                    diagnostics = {
                        globals = { "vim" }
                    }
                }
            }
        })
        lspconfig.gopls.setup({
            settings = {
                gopls = {
                    completeUnimported = true,
                    usePlaceholders = true,
                    buildFlags = {}
                }
            }
        })
        lspconfig.templ.setup({})
        lspconfig.emmet_ls.setup({
            filetypes = { "html", "templ", "htmx" }
        })
        lspconfig.cssls.setup({
            capabilities = (function()
                local c = vim.lsp.protocol.make_client_capabilities()
                c.textDocument.completion.completionItem.snippetSupport = true
                return c
            end)()
        })
        lspconfig.ts_ls.setup({})
        lspconfig.eslint.setup({})
        lspconfig.htmx.setup({
            filetypes = { "html", "templ" }
        })
        lspconfig.pyright.setup({})
        lspconfig.gdscript.setup({})
        lspconfig.rust_analyzer.setup({
            cmd = { "rustup", "run", "stable", "rust-analyzer" }
        })
    end
}
