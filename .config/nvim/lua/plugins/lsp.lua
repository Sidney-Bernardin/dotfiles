return {
    {
        "williamboman/mason.nvim",
        opts = {
            ui = {
                icons = {
                    package_installed = "✓",
                    package_pending = "➜",
                    package_uninstalled = "✗",
                },
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
                end,
            })

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
        end,
    },
    {
        "kosayoda/nvim-lightbulb",
        opts = {
            autocmd = { enabled = true },
            sign = {
                enabled = true,
                text = "",
                hl = "LineNr",
            },
        },
    },
}
