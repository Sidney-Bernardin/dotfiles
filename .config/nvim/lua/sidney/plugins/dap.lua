local function keymaps()
    local keymap = vim.keymap.set
    local opts = { noremap = true }

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
end

return {
    "mfussenegger/nvim-dap",
    dependencies = {
        "leoluz/nvim-dap-go",
        "rcarriga/nvim-dap-ui",
        "theHamsta/nvim-dap-virtual-text",
        "nvim-telescope/telescope-dap.nvim",
    },
    config = function()
        local dap   = require("dap")
        local dapui = require("dapui")

        dapui.setup()
        require("nvim-dap-virtual-text").setup()
        require("dap-go").setup()

        -- Auto open/close dapui
        dap.listeners.after.event_initialized['dapui_config'] = function() dapui.open() end
        dap.listeners.after.event_terminated['dapui_config'] = function() dapui.close() end
        dap.listeners.after.event_exited['dapui_config'] = function() dapui.close() end

        -- Change breakpoint sign
        vim.fn.sign_define('DapBreakpoint', { text = '󰏃' })

        keymaps()
    end
}
