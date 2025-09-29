return {
    {
        "williamboman/mason.nvim",
        opts = {
            ui = {
                border = "rounded",
                backdrop = 100,
                icons = {
                    package_installed = "✓",
                    package_pending = "➜",
                    package_uninstalled = "✗",
                },
            },
        },
    },
    {
        "kosayoda/nvim-lightbulb",
        opts = {
            autocmd = { enabled = true },
            sign = {
                enabled = true,
                text = "",
            },
        },
    },
    {
        "neovim/nvim-lspconfig",
        config = true,
    },
}
