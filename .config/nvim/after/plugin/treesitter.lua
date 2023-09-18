local ok, treesitter = pcall(require, "nvim-treesitter.configs")
if not ok then return end



treesitter.setup({
    ensure_installed = {},
    auto_install = true,
    indent = { enable = false },
    highlight = {
        enable = true,
        disable = { 'html', 'vue' },
    }
})
