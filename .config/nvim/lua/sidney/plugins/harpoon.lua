return {
    "ThePrimeagen/harpoon",

    config = function()
        require("harpoon").setup({
            menu = {
                height = 8,
            },
        })
    end,

    keys = {
        -- Mark file
        { "<A-m>", ":lua require('harpoon.mark').add_file()<CR>" },

        -- Open menu
        { "<A-u>", ":lua require('harpoon.ui').toggle_quick_menu()<CR>" },

        -- File navigation
        { "<A-j>", ":lua require('harpoon.ui').nav_file(1)<CR>" },
        { "<A-k>", ":lua require('harpoon.ui').nav_file(2)<CR>" },
        { "<A-l>", ":lua require('harpoon.ui').nav_file(3)<CR>" },
        { "<A-;>", ":lua require('harpoon.ui').nav_file(4)<CR>" },
        { "<A-f>", ":lua require('harpoon.ui').nav_file(5)<CR>" },
        { "<A-d>", ":lua require('harpoon.ui').nav_file(6)<CR>" },
        { "<A-s>", ":lua require('harpoon.ui').nav_file(7)<CR>" },
        { "<A-a>", ":lua require('harpoon.ui').nav_file(8)<CR>" },
    }
}
