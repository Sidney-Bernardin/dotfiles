local go_auto_group = vim.api.nvim_create_augroup("Golang", { clear = true })

-- Auto import on save.
vim.api.nvim_create_autocmd('BufWritePre', {
    pattern = '*.go',
    group = go_auto_group,
    callback = function() require('go.format').goimport() end,
})
