local ls = require('luasnip')

-- Next node.
vim.keymap.set({ 'i', 's' }, '<C-j>', function()
    if ls.expand_or_jumpable() then
        ls.expand_or_jump()
    end
end, { silent = true })

-- Pevious node.
vim.keymap.set({ 'i', 's' }, '<C-k>', function()
    if ls.jumpable(-1) then
        ls.jump(-1)
    end
end, { silent = true })

-- Next choice.
vim.keymap.set({ 'i' }, '<C-l>', function()
    if ls.choice_active() then
        ls.change_choice(1)
    end
end, { silent = true })
