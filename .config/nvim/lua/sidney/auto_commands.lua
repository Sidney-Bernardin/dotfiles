-- Enable Highlight Yank.
vim.api.nvim_create_autocmd('TextYankPost', {
    callback = function()
        vim.highlight.on_yank({ higroup = "HighlightYank", timeout = 300 })
    end
})

-- Shorter tabs.
vim.api.nvim_create_autocmd('FileType', {
    pattern = { 'html', 'vue', 'javascript' },
    callback = function()
        vim.opt.tabstop = 2
        vim.opt.softtabstop = 2
        vim.opt.shiftwidth = 2
    end
})
