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

-- Set winbar only when there are splits open.
vim.api.nvim_create_autocmd('WinEnter', {
    callback = function()
        if #vim.api.nvim_list_wins() > 1 then
            vim.opt.winbar = ' %t %(%m %)'
        else
            vim.opt.winbar = nil
        end
    end
})
