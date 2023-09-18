local ok, nullls = pcall(require, "null-ls")
if not ok then return end



nullls.setup({
    sources = {
        nullls.builtins.formatting.prettier,
    },
})
