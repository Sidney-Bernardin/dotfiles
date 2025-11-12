local core_auto_group = vim.api.nvim_create_augroup("CoreGroup", { clear = true })

-- Highlights yanked lines.
vim.api.nvim_create_autocmd("TextYankPost", {
    group = core_auto_group,
    callback = function()
        vim.highlight.on_yank({ higroup = "Visual", timeout = 300 })
    end,
})
