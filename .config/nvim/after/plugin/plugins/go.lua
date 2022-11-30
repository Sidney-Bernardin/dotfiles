local go_auto_group = vim.api.nvim_create_augroup("MyGolangAutoGroup", { clear = true })

-- Import on save.
vim.api.nvim_create_autocmd('BufWritePre', {
    pattern = '*.go',
    group = go_auto_group,
    callback = function()
        require('go.format').goimport()
    end,
})
