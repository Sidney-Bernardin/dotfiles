vim.lsp.enable({
    "lua_ls",
    "gopls",
    "html",
    "cssls",

    "vtsls",
    "vue_ls",
    "pyright",
})

vim.lsp.config("lua_ls", {
    settings = {
        Lua = {
            workspace = {
                library = vim.api.nvim_get_runtime_file("", true)
            }
        }
    }
})

vim.lsp.config("gopls", {
    settings = {
        gopls = {
            completeUnimported = true,
            usePlaceholders = true,
            buildFlags = {},
        }
    }
})

vim.lsp.config("vtsls", {
    settings = {
        vtsls = {
            tsserver = {
                globalPlugins = {
                    {
                        name = "@vue/typescript-plugin",
                        location = vim.fn.stdpath("data") ..
                            "/mason/packages/vue-language-server/node_modules/@vue/language-server",
                        languages = { "vue" },
                        configNamespace = "typescript",
                    },
                },
            },
        },
    },
    filetypes = { "javascript", "javascriptreact", "javascript.jsx", "typescript", "typescriptreact", "typescript.tsx", "vue" },
})

vim.api.nvim_create_autocmd("LspAttach", {
    callback = function(e)
        local client = assert(vim.lsp.get_client_by_id(e.data.client_id))

        -- if client:supports_method("textDocument/completion") then
        --     vim.opt.completeopt = { "fuzzy", "menu", "menuone", "noinsert", "noselect", "popup", "preview" }
        --     vim.lsp.completion.enable(true, client.id, e.buf, { autotrigger = true })
        -- end

        if client:supports_method("textDocument/formatting") then
            vim.api.nvim_create_autocmd("BufWritePre", {
                buffer = e.buf,
                callback = function()
                    vim.lsp.buf.format({ bufnr = e.buf, id = client.id, timeout_ms = 3000 })
                end,
            })
        end

        vim.keymap.set("n", "grd", vim.lsp.buf.definition)
    end,
})

vim.diagnostic.config({
    severity_sort = true,
    virtual_text = true,
    update_in_insert = true,
    float = {
        border = "rounded",
        source = true,
        severity_sort = true,
    },
    jump = {
        float = true,
    },
})
