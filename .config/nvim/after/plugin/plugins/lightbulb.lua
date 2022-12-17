-- Change the nvim-lightbulb sign.
vim.fn.sign_define('LightBulbSign', { text = '', texthl = 'LineNr' })

-- Update the lightbulb when the cursor moves.
vim.api.nvim_create_autocmd('CursorMoved', {
    pattern = '*',
    callback = function() require('nvim-lightbulb').update_lightbulb() end,
})
