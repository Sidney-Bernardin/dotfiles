vim.lsp.enable({
    "lua_ls",
    "gopls",
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
    signs = {
        text = {
            [vim.diagnostic.severity.ERROR] = "",
            [vim.diagnostic.severity.WARN] = "",
            [vim.diagnostic.severity.INFO] = "",
            [vim.diagnostic.severity.HINT] = "",
        },
    },
})
