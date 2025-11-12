return {
    "neovim/nvim-lspconfig",
    {
        "williamboman/mason.nvim",
        opts = {
            ui = {
                icons = {
                    package_installed = "✓",
                    package_pending = "➜",
                    package_uninstalled = "✗",
                },
            },
        },
    },
    {
        "saghen/blink.cmp",
        opts = {
            keymap = { preset = "enter" },
            completion = { documentation = { auto_show = true } },
            fuzzy = { implementation = "lua" },
        },
    },
    {
        "stevearc/conform.nvim",
        opts = {
            format_on_save = {
                timeout_ms = 3000,
                lsp_format = "fallback",
            },
            formatters_by_ft = {
                lua = { "stylua" },
            },
        },
    },
    {
        "windwp/nvim-autopairs",
        opts = {
            disable_filetype = { "TelescopePrompt" },
        },
    },
}
