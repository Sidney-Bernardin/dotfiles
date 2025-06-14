return {
    {
        "williamboman/mason.nvim",
        opts = {
            ui = {
                border = "rounded",
                backdrop = 100,
                icons = {
                    package_installed = "✓",
                    package_pending = "➜",
                    package_uninstalled = "✗",
                },
            },
        },
    },
    {
        "kosayoda/nvim-lightbulb",
        opts = {
            autocmd = { enabled = true },
            sign = {
                enabled = true,
                text = "",
            },
        },
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            local lspconfig = require("lspconfig")

            lspconfig.util.default_config = vim.tbl_extend("force", lspconfig.util.default_config, {
                capabilities = require("cmp_nvim_lsp").default_capabilities(
                    vim.lsp.protocol.make_client_capabilities()
                ),
            })

            vim.api.nvim_create_autocmd("LspAttach", {
                callback = function(args)
                    local client = vim.lsp.get_client_by_id(args.data.client_id)

                    if client:supports_method("textDocument/formatting") then
                        vim.api.nvim_create_autocmd("BufWritePre", {
                            buffer = args.buf,
                            callback = function()
                                vim.lsp.buf.format({ bufnr = args.buf, id = client.id })
                            end,
                        })
                    end

                    vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "LSP code action" })
                    vim.keymap.set("n", "<leader>i", vim.lsp.buf.hover, { desc = "LSP hover info" })
                    vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, { desc = "LSP definition" })
                    vim.keymap.set("n", "<leader>gt", vim.lsp.buf.type_definition, { desc = "LSP type definition" })
                    vim.keymap.set("n", "<leader>gi", vim.lsp.buf.implementation, { desc = "LSP implementation" })
                    vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, { desc = "LSP rename" })
                    vim.keymap.set("n", "<leader>f", vim.lsp.buf.format, { desc = "LSP format" })
                    vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, { desc = "Diagnostic prev" })
                    vim.keymap.set("n", "]d", vim.diagnostic.goto_next, { desc = "Diagnostic next" })
                    vim.keymap.set("n", "<leader>d", vim.diagnostic.open_float, { desc = "Diagnostic float" })
                    vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Diagnostic to list" })
                end,
            })

            lspconfig.templ.setup({})
            -- lspconfig.htmx.setup({})
            lspconfig.ts_ls.setup({})
            lspconfig.eslint.setup({})
            lspconfig.pyright.setup({})
            lspconfig.gdscript.setup({})
            lspconfig.taplo.setup({})

            lspconfig.lua_ls.setup({
                settings = {
                    Lua = {
                        diagnostics = {
                            globals = { "vim" },
                        },
                    },
                },
            })

            lspconfig.gopls.setup({
                settings = {
                    gopls = {
                        completeUnimported = true,
                        usePlaceholders = true,
                        buildFlags = {},
                    },
                },
            })

            lspconfig.emmet_ls.setup({
                filetypes = { "html", "templ", "htmx" },
            })

            lspconfig.cssls.setup({
                capabilities = (function()
                    local c = vim.lsp.protocol.make_client_capabilities()
                    c.textDocument.completion.completionItem.snippetSupport = true
                    return c
                end)(),
            })

            lspconfig.rust_analyzer.setup({
                cmd = { "rustup", "run", "stable", "rust-analyzer" },
            })
        end,
    },
}
