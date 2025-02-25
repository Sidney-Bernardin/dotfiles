return {
    "L3MON4D3/LuaSnip",
    version = "v2.*",
    dependencies = {
        "rafamadriz/friendly-snippets",
    },
    config = function()
        local luasnip = require("luasnip")
        local types = require("luasnip.util.types")

        luasnip.config.set_config({
            history = true,
            updateevents = "TextChanged,TextChangedI",
            enable_autosnippets = true,
            ext_opts = {
                [types.choiceNode] = {
                    active = {
                        virt_text = { { "<<<", "Error" } },
                    },
                },
            },
        })

        require("luasnip.loaders.from_vscode").lazy_load()
    end,
    keys = function()
        local luasnip = require("luasnip")
        -- stylua: ignore
        return {
            { mode = { "i", "s" }, "<C-j>", function() luasnip.jump(1) end,  { silent = true, desc = "Snippet jump next" } },
            { mode = { "i", "s" }, "<C-k>", function() luasnip.jump(-1) end, { silent = true, desc = "Snippet jump prev" } },
            {
                mode = { "i" },
                "<C-l>",
                function()
                    if luasnip.choice_active() then
                        luasnip.change_choice(1)
                    end
                end,
                { silent = true },
            },
        }
    end,
}
