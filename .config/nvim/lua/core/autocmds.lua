local core_auto_group = vim.api.nvim_create_augroup("CoreGroup", { clear = true })

-- Highlights yanked lines
vim.api.nvim_create_autocmd("TextYankPost", {
    group = core_auto_group,
    callback = function()
        vim.highlight.on_yank({ higroup = "HighlightYank", timeout = 300 })
    end,
})

-- Sets winbar only when multiple windows are open
vim.api.nvim_create_autocmd("WinEnter", {
    group = core_auto_group,
    callback = function()
        if vim.bo.filetype == "" then
            return
        end

        if #vim.api.nvim_list_wins() > 1 then
            vim.opt.winbar = "  %t %(%m %)"
        else
            vim.opt.winbar = nil
        end
    end,
})
