return {
    "windwp/nvim-autopairs",

    config = function()
        require("nvim-autopairs").setup({
            disable_filetype = { "TelescopePrompt" },
            fast_wrap = {},
        })
    end
}
