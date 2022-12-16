vim.api.nvim_create_autocmd("FileType", {
    pattern = "mason",
    callback = function()
        vim.opt.cursorline = false
    end
})
