return {
    "dmmulroy/tsc.nvim",

    config = function()
        require("tsc").setup({
            auto_open_qflist = false,
            auto_start_watch_mode = true,
            use_diagnostics = true,
            flags = {
                watch = true
            }
        })
    end
}
