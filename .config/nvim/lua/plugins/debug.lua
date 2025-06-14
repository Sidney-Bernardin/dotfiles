return {
    {
        "mfussenegger/nvim-dap",
        dependencies = {
            "nvim-neotest/nvim-nio",
            { "rcarriga/nvim-dap-ui",            opts = {} },
            { "theHamsta/nvim-dap-virtual-text", opts = {} },
            { "leoluz/nvim-dap-go",              opts = {} },
        },
        -- stylua: ignore
        config = function()
            local dap = require("dap")
            local dapui = require("dapui")

            dap.listeners.after.event_initialized["dapui_config"] = function() dapui.open() end
            dap.listeners.after.event_terminated["dapui_config"] = function() dapui.close() end
            dap.listeners.after.event_exited["dapui_config"] = function() dapui.close() end

            -- vim.api.nvim_set_hl(0, "DapStoppedLine", { default = true, link = "Visual" })
            vim.fn.sign_define("DapBreakpoint", { text = "" })
        end,
        keys = function()
            local dap = require("dap")
            -- stylua: ignore
            return {
                { "<leader>dB", function() dap.set_breakpoint(vim.fn.input('Breakpoint condition: ')) end, desc = "Dap breakpoint condition" },
                { "<leader>db", function() dap.toggle_breakpoint() end,                                    desc = "Dap toggle breakpoint" },
                { "<leader>dc", function() dap.continue() end,                                             desc = "Dap run/continue" },
                { "<leader>da", function() dap.continue({ before = get_args }) end,                        desc = "Dap run with args" },
                { "<leader>dC", function() dap.run_to_cursor() end,                                        desc = "Dap run to cursor" },
                { "<leader>dl", function() dap.run_last() end,                                             desc = "Dap run last" },
                { "<leader>dg", function() dap.goto_() end,                                                desc = "Dap go to line (no execute)" },
                { "<leader>dj", function() dap.down() end,                                                 desc = "Dap down" },
                { "<leader>dk", function() dap.up() end,                                                   desc = "Dap up" },
                { "<leader>di", function() dap.step_into() end,                                            desc = "Dap step into" },
                { "<leader>dO", function() dap.step_over() end,                                            desc = "Dap step over" },
                { "<leader>do", function() dap.step_out() end,                                             desc = "Dap step out" },
                { "<leader>dP", function() dap.pause() end,                                                desc = "Dap pause" },
                { "<leader>dr", function() dap.repl.toggle() end,                                          desc = "Dap toggle REPL" },
                { "<leader>ds", function() dap.session() end,                                              desc = "Dap session" },
                { "<leader>dt", function() dap.terminate() end,                                            desc = "Dap terminate" },
                { "<leader>dw", function() require("dap.ui.widgets").hover() end,                          desc = "Dap widgets" },
            }
        end,
    },
}
