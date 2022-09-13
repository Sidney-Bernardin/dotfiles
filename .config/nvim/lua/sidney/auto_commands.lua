-- Call go_org_imports from init.lua.
vim.cmd [[ autocmd BufWritePre *.go lua go_org_imports() ]]

-- Format on save.
vim.cmd [[autocmd BufWritePre * lua vim.lsp.buf.formatting_sync()]]
