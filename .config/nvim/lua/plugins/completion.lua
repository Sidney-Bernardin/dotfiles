return {
    {
        -- "Sidney-Bernardin/mist.nvim",
        dir = "~/projects/neovim_plugins/mist.nvim",
        config = function()
            local mist = require("mist")
            vim.keymap.set("v", "<Tab>", function()
                mist.foo()
            end)
        end,
    },
    "neovim/nvim-lspconfig",
    {
        "williamboman/mason.nvim",
        opts = {
            ui = {
                icons = {
                    package_installed = "✓",
                    package_pending = "➜",
                    package_uninstalled = "✗",
                },
            },
        },
    },
    {
        "saghen/blink.cmp",
        opts = {
            keymap = { preset = "enter" },
            completion = { documentation = { auto_show = true } },
            fuzzy = { implementation = "lua" },
            sources = {
                default = { "lsp", "path", "snippets", "buffer" },
                per_filetype = {
                    sql = { 'snippets', 'dadbod', 'buffer' },
                },
                providers = {
                    dadbod = { name = "Dadbod", module = "vim_dadbod_completion.blink" },
                },
            },
        },
    },
    {
        "stevearc/conform.nvim",
        opts = {
            format_on_save = {
                timeout_ms = 3000,
                lsp_format = "fallback",
            },
            formatters_by_ft = {
                lua = { "stylua" },
                javascript = { "prettier", stop_after_first = true },
                python = { "black" },
            },
            formatters = {
                black = {
                    append_args = { "--line-length", "1000" },
                }
            }
        },
    },
    {
        "windwp/nvim-autopairs",
        opts = {
            disable_filetype = { "TelescopePrompt" },
        },
    },
    {
        "ThePrimeagen/99",
        dependencies = {
            'hrsh7th/nvim-cmp',
        },
        config = function()
            local _99 = require("99")

            -- For logging that is to a file if you wish to trace through requests
            -- for reporting bugs, i would not rely on this, but instead the provided
            -- logging mechanisms within 99.  This is for more debugging purposes
            local cwd = vim.uv.cwd()
            local basename = vim.fs.basename(cwd)
            _99.setup({
                model = "",

                logger = {
                    level = _99.DEBUG,
                    path = "/tmp/" .. basename .. ".99.debug",
                    print_on_error = true,
                },

                --- A new feature that is centered around tags
                completion = {
                    --- Defaults to .cursor/rules
                    -- I am going to disable these until i understand the
                    -- problem better.  Inside of cursor rules there is also
                    -- application rules, which means i need to apply these
                    -- differently
                    -- cursor_rules = "<custom path to cursor rules>"

                    --- A list of folders where you have your own SKILL.md
                    --- Expected format:
                    --- /path/to/dir/<skill_name>/SKILL.md
                    ---
                    --- Example:
                    --- Input Path:
                    --- "scratch/custom_rules/"
                    ---
                    --- Output Rules:
                    --- {path = "scratch/custom_rules/vim/SKILL.md", name = "vim"},
                    --- ... the other rules in that dir ...
                    ---
                    custom_rules = {
                        "scratch/custom_rules/",
                    },

                    --- What autocomplete do you use.  We currently only
                    --- support cmp right now
                    source = "cmp",
                },

                --- WARNING: if you change cwd then this is likely broken
                --- ill likely fix this in a later change
                ---
                --- md_files is a list of files to look for and auto add based on the location
                --- of the originating request.  That means if you are at /foo/bar/baz.lua
                --- the system will automagically look for:
                --- /foo/bar/AGENT.md
                --- /foo/AGENT.md
                --- assuming that /foo is project root (based on cwd)
                md_files = {
                    "AGENT.md",
                },
            })

            -- Create your own short cuts for the different types of actions
            vim.keymap.set("n", "<leader>9ff", function()
                _99.fill_in_function()
            end)
            vim.keymap.set("n", "<leader>9fp", function()
                _99.fill_in_function_prompt()
            end)
            -- take extra note that i have visual selection only in v mode
            -- technically whatever your last visual selection is, will be used
            -- so i have this set to visual mode so i dont screw up and use an
            -- old visual selection
            --
            -- likely ill add a mode check and assert on required visual mode
            -- so just prepare for it now
            vim.keymap.set("v", "<leader>9v", function()
                _99.visual()
            end)
            vim.keymap.set("v", "<leader>9vp", function()
                _99.visual_prompt()
            end)

            --- if you have a request you dont want to make any changes, just cancel it
            vim.keymap.set("v", "<leader>9s", function()
                _99.stop_all_requests()
            end)

            --- Example: Using rules + actions for custom behaviors
            --- Create a rule file like ~/.rules/debug.md that defines custom behavior.
            --- For instance, a "debug" rule could automatically add printf statements
            --- throughout a function to help debug its execution flow.
            vim.keymap.set("n", "<leader>9fd", function()
                _99.fill_in_function()
            end)
        end,
    },
}
