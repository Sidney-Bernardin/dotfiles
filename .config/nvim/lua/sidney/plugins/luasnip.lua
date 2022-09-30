if vim.g.snippets ~= 'luasnip' then return end

local luasnip = require('luasnip')
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



-- [[ ===== Snippets ===== ]] --

local snip = luasnip.snippet
local node = luasnip.snippet_node
local text = luasnip.text_node
local insert = luasnip.insert_node
local func = luasnip.function_node
local choice = luasnip.choice_node
local dynamicn = luasnip.dynamic_node

local date = function() return { os.date('%Y-%m-%d') } end

luasnip.add_snippets(nil, {
    all = {
        snip({
            trig = "date",
            namr = "Date",
            dscr = "Date in the form of YYYY-MM-DD",
        }, {
            func(date, {}),
        }),
    },
})
