vim.g.netrw_browse_split = 0
vim.g.netrw_banner = 0
vim.g.netrw_winsize = 25
vim.g.netrw_buffsettings = 'noma nomod nu nobl nowrap ro'

-- Open file explorer.
vim.api.nvim_set_keymap('n', '<leader>pv', ':Ex<CR>', { noremap = true })
