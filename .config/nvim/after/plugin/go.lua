local ok, go = pcall(require, "go")
if not ok then return end



go.setup()



-- Import on save
vim.api.nvim_create_autocmd('BufWritePre', {
    pattern = '*.go',
    callback = function() require('go.format').goimport() end,
})
