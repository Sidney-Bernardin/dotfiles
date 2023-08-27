local ls = require('luasnip')
local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

-- Next node
keymap({ 'i', 's' }, '<C-j>', function()
    if ls.expand_or_jumpable() then
        ls.expand_or_jump()
    end
end, opts)

-- Pevious node
keymap({ 'i', 's' }, '<C-k>', function()
    if ls.jumpable(-1) then
        ls.jump(-1)
    end
end, opts)

-- Next choice
keymap({ 'i' }, '<C-l>', function()
    if ls.choice_active() then
        ls.change_choice(1)
    end
end, opts)
