local auto_format_group = vim.api.nvim_create_augroup("MyAutoFormat", { clear = true })

-- Returns the names of the current buffer's active language servers in a table.
local function get_active_language_servers()
  local names = {}

  -- Get the current buffer's filetype.
  local buf_ft = vim.api.nvim_buf_get_option(0, 'filetype')

  -- Get all active language server clients.
  local clients = vim.lsp.get_active_clients()
  if next(clients) == nil then
    return names
  end

  for _, client in ipairs(clients) do

    -- Insert names of the clients, that the current buffer uses, into the
    -- names table.
    local filetypes = client.config.filetypes
    if filetypes and vim.fn.index(filetypes, buf_ft) ~= -1 then
      table.insert(names, client.name)
    end
  end

  return names
end

-- Sets up LSP related keymaps and auto commands.
local function on_attach(client, bufnr)

  local keymap = vim.keymap.set
  local opts = { noremap = true }

  -- Diagnostics keymaps.
  keymap('n', '[d', vim.diagnostic.goto_prev, opts)
  keymap('n', ']d', vim.diagnostic.goto_next, opts)
  keymap('n', '<leader>d', vim.diagnostic.open_float, opts)
  keymap('n', '<leader>q', vim.diagnostic.setloclist, opts)

  -- LSP keymaps.
  keymap("n", "<leader>a", vim.lsp.buf.code_action, opts)
  keymap("n", "<leader>i", vim.lsp.buf.hover, opts)
  keymap("n", "gd", vim.lsp.buf.definition, opts)
  keymap("n", "gt", vim.lsp.buf.type_definition, opts)
  keymap("n", "<leader>gi", vim.lsp.buf.implementation, opts)
  keymap("n", "<leader>rn", vim.lsp.buf.rename, opts)
  keymap("n", "<leader>F", vim.lsp.buf.format, opts)

  -- Format on save.
  if client.supports_method("textDocument/formatting") then
    vim.api.nvim_create_autocmd('BufWritePre', {
      group = auto_format_group,
      buffer = bufnr,
      callback = function()
        vim.lsp.buf.format({ bufnr = bufnr })
      end,
    })
  end
end

-- Setup lspconfig and nvim-lsp-installer.
local lsp_installer = require("nvim-lsp-installer")
local lspconfig = require("lspconfig")
lsp_installer.setup({})

-- Setup a configuration for each installed language server.
for _, server in ipairs(lsp_installer.get_installed_servers()) do
  lspconfig[server.name].setup({
    capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities()),
    on_attach = on_attach,
    settings = {
      Lua = {
        diagnostics = {
          globals = { 'vim' }
        }
      }
    }
  })
end
