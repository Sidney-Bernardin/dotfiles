local function keymaps(luasnip)
    local keymap = vim.keymap.set
    local opts = { noremap = true, silent = true }

    -- Next node
    keymap({ 'i', 's' }, '<C-j>', function()
        if luasnip.expand_or_jumpable() then
            luasnip.expand_or_jump()
        end
    end, opts)

    -- Pevious node
    keymap({ 'i', 's' }, '<C-k>', function()
        if luasnip.jumpable(-1) then
            luasnip.jump(-1)
        end
    end, opts)

    -- Next choice
    keymap({ 'i' }, '<C-l>', function()
        if luasnip.choice_active() then
            luasnip.change_choice(1)
        end
    end, opts)
end

return {
    "L3MON4D3/LuaSnip",
    dependencies = {
        "rafamadriz/friendly-snippets",
    },
    config = function()
        local luasnip = require("luasnip")
        local types = require('luasnip.util.types')

        luasnip.config.set_config({
            history = true,
            updateevents = 'TextChanged,TextChangedI',
            enable_autosnippets = true,
            ext_opts = {
                [types.choiceNode] = {
                    active = {
                        virt_text = { { "<<<", "Error" } }
                    }
                }
            }
        })

        require("luasnip.loaders.from_vscode").lazy_load()

        keymaps(luasnip)
    end
}
