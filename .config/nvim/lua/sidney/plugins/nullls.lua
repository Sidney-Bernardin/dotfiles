local nullls = require("null-ls")

nullls.setup({
    -- debug = false,
    sources = {
        nullls.builtins.formatting.prettier
    }
})
