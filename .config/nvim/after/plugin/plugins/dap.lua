local keymap = vim.keymap.set
local opts = { noremap = true }

-- Change the breakpoint sign.
vim.fn.sign_define('DapBreakpoint', { text = '󰏃' })

keymap('n', '<leader>dr', ':lua require("dap").repl.open()<CR>', opts)
keymap('n', '<leader>dt', ':lua require("dap-go").debug_test()<CR>', opts)

-- Stepping
keymap('n', '<F9>', ':lua require("dap").continue()<CR>', opts)
keymap('n', '<F10>', ':lua require("dap").step_over()<CR>', opts)
keymap('n', '<F11>', ':lua require("dap").step_into()<CR>', opts)
keymap('n', '<F12>', ':lua require("dap").step_out()<CR>', opts)

-- Breakpoints
keymap('n', '<A-b>', ':lua require("dap").toggle_breakpoint()<CR>', opts)
keymap('n', '<A-B>', ':lua require("dap").set_breakpoint(vim.fn.input("Breakpoint condition: "))<CR>', opts)
keymap('n', '<C-l>', ':lua require("dap").set_breakpoint(nil, nil, vim.fn.input("Log point message: "))<CR>', opts)
