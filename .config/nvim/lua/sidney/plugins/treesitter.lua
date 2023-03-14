require('nvim-treesitter.configs').setup({
  ensure_installed = {},
  auto_install = true,
  indent = { enable = false },
  highlight = {
    enable = true,
    disable = { 'vue', 'dockerfile' },
  }
})
