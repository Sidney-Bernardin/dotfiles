return {
    "rafamadriz/friendly-snippets",
    {
        "vague2k/vague.nvim",
        lazy = false,
        priority = 1000,
        config = function()
            require("vague").setup({
                transparent = true,
                italic = false,
            })
            vim.cmd([[colorscheme vague]])
        end,
    },
    {
        "nvim-treesitter/nvim-treesitter",
        opts = {
            auto_install = true,
            indent = { enable = true },
            highlight = { enable = true },
        },
    },
    {
        "nvim-treesitter/nvim-treesitter-context",
        dependencies = { "nvim-treesitter/nvim-treesitter" },
        opts = {
            multiline_threshold = 5,
        },
    },
    {
        "nvim-lualine/lualine.nvim",
        opts = {
            options = {
                component_separators = { left = "", right = "" },
                section_separators = { left = "", right = "" },
            },
        },
    },
    {

        "folke/which-key.nvim",
        opts = {
            delay = 1000,
            icons = { mappings = false },
            win = { border = "rounded" }
        },
        keys = {
            { '<leader>?', function()
                require("which-key").show({ global = false })
            end },
        },
    },
    {
        "ray-x/go.nvim",
        dependencies = { "ray-x/guihua.lua" },
        config = function()
            require("go").setup()
        end,
    },
    {
        "kosayoda/nvim-lightbulb",
        opts = {
            autocmd = { enabled = true },
            sign = {
                enabled = true,
                text = "",
            },
        },
    },
    {
        "kristijanhusak/vim-dadbod-ui",
        dependencies = {
            { "tpope/vim-dadbod" },
            {
                "kristijanhusak/vim-dadbod-completion",
                ft = { "sql", "mysql", "plsql" },
            },
        },
        cmd = { "DBUI", "DBUIToggle", "DBUIAddConnection", "DBUIFindBuffer" },
        init = function()
            vim.g.db_ui_use_nerd_fonts = 1
        end,
        keys = {
            { "<leader>DB", ":DBUIToggle<CR>", desc = "DB toggle" },
        },
    },
    {
        "mfussenegger/nvim-dap",
        dependencies = {
            "nvim-neotest/nvim-nio",
            { "rcarriga/nvim-dap-ui",            opts = {} },
            { "theHamsta/nvim-dap-virtual-text", opts = {} },
            { "leoluz/nvim-dap-go",              opts = {} },
        },
        config = function()
            local dap = require("dap")
            local dapui = require("dapui")

            dap.listeners.after.event_initialized["dapui_config"] = function() dapui.open() end
            dap.listeners.after.event_terminated["dapui_config"] = function() dapui.close() end
            dap.listeners.after.event_exited["dapui_config"] = function() dapui.close() end
            vim.fn.sign_define("DapBreakpoint", { text = "" })
        end,
        keys = function()
            local dap = require("dap")
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
