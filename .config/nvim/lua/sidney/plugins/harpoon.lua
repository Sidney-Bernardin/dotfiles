return {
    "ThePrimeagen/harpoon",
    config = function()
        require("harpoon").setup({
            menu = {
                height = 8,
            },
        })

        local keymap = vim.keymap.set
        local opts = { noremap = true }

        -- Mark file
        keymap("n", "<A-m>", ":lua require('harpoon.mark').add_file()<CR>", opts)

        -- Open menu
        keymap("n", "<A-u>", ":lua require('harpoon.ui').toggle_quick_menu()<CR>", opts)

        -- File navigation
        keymap("n", "<A-j>", ":lua require('harpoon.ui').nav_file(1)<CR>", opts)
        keymap("n", "<A-k>", ":lua require('harpoon.ui').nav_file(2)<CR>", opts)
        keymap("n", "<A-l>", ":lua require('harpoon.ui').nav_file(3)<CR>", opts)
        keymap("n", "<A-;>", ":lua require('harpoon.ui').nav_file(4)<CR>", opts)
        keymap("n", "<A-f>", ":lua require('harpoon.ui').nav_file(5)<CR>", opts)
        keymap("n", "<A-d>", ":lua require('harpoon.ui').nav_file(6)<CR>", opts)
        keymap("n", "<A-s>", ":lua require('harpoon.ui').nav_file(7)<CR>", opts)
        keymap("n", "<A-a>", ":lua require('harpoon.ui').nav_file(8)<CR>", opts)
    end
}
