local autocmd = vim.api.nvim_create_autocmd
local general_auto_group = vim.api.nvim_create_augroup("General", { clear = true })

-- Highlights yanked lines.
autocmd('TextYankPost', {
    group = general_auto_group,
    callback = function()
        vim.highlight.on_yank({ higroup = 'HighlightYank', timeout = 300 })
    end
})

-- Sets winbar only when multiple windows are open.
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
