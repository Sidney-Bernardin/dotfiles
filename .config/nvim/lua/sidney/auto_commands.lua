local autocmd = vim.api.nvim_create_autocmd
local general_auto_group = vim.api.nvim_create_augroup("MyGeneralAutoGroup", { clear = true })

-- Enable Highlight Yank.
autocmd('TextYankPost', {
    group = general_auto_group,
    callback = function()
        vim.highlight.on_yank({ higroup = 'HighlightYank', timeout = 300 })
    end
})

-- Shorter tabs.
autocmd('FileType', {
    pattern = { 'html', 'vue', 'javascript' },
    group = general_auto_group,
    callback = function()
        vim.opt.tabstop = 2
        vim.opt.softtabstop = 2
        vim.opt.shiftwidth = 2
    end
})

-- Set winbar only when there are splits open.
autocmd('WinEnter', {
    group = general_auto_group,
    callback = function()
        if vim.bo.filetype == '' then return end

        if #vim.api.nvim_list_wins() > 1 then
            vim.opt.winbar = '  %t %(%m %)'
        else
            vim.opt.winbar = nil
        end
    end
})
