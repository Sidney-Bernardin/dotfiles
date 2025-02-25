vim.g.mapleader = " "

vim.keymap.set("n", "<leader>s", ":w<CR>", { desc = "Save" })

vim.keymap.set("n", "<C-n>", ":bnext<CR>", { desc = "Buffer next" })
vim.keymap.set("n", "<C-p>", ":bprev<CR>", { desc = "Buffer prev" })

vim.keymap.set("n", "<C-j>", ":cnext<CR>zz", { desc = "Quickfix next" })
vim.keymap.set("n", "<C-k>", ":cprev<CR>zz", { desc = "Quickfix prev" })

vim.keymap.set("n", "G", "Gzz", { noremap = true })
vim.keymap.set("n", "<C-d>", "<C-d>zz", { noremap = true })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { noremap = true })
vim.keymap.set("n", "n", "nzzzV", { noremap = true })
vim.keymap.set("n", "N", "NzzzV", { noremap = true })
vim.keymap.set("n", "J", "mzJ`z", { noremap = true })

vim.keymap.set("x", "<leader>p", '"_dP', { noremap = true, desc = "Void paste" })

vim.keymap.set("i", ",", ",<c-g>u", { noremap = true, desc = "Undo breakpoint ," })
vim.keymap.set("i", ".", ".<c-g>u", { noremap = true, desc = "Undo breakpoint ." })

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move line down" })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move line up" })

vim.keymap.set("n", "M", function()
    if vim.opt.mouse._value == "" then
        vim.opt.mouse = "a"
        print("󰍽 Mouse is ON 󰍽")
    else
        vim.opt.mouse = ""
        print("󰍾 Mouse is OFF 󰍾")
    end
end, { noremap = true, desc = "Mouse toggle" })

-- Change distance of <C-d> and <C-u>
vim.cmd([[nnoremap <expr> <C-d> (winheight(0) / 3) . "<C-d>"]])
vim.cmd([[nnoremap <expr> <C-u> (winheight(0) / 3) . "<C-u>"]])
