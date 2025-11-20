vim.keymap.set("n", "G", "Gzz", { noremap = true })
vim.keymap.set("n", "<C-d>", "<C-d>zz", { noremap = true })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { noremap = true })
vim.keymap.set("n", "n", "nzzzV", { noremap = true })
vim.keymap.set("n", "N", "NzzzV", { noremap = true })
vim.keymap.set("n", "J", "mzJ`z", { noremap = true })

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("i", ",", ",<c-g>u", { noremap = true })
vim.keymap.set("i", ".", ".<c-g>u", { noremap = true })

-- Change distance of <C-d> and <C-u>
vim.cmd([[nnoremap <expr> <C-d> (winheight(0) / 3) . "<C-d>"]])
vim.cmd([[nnoremap <expr> <C-u> (winheight(0) / 3) . "<C-u>"]])

--

vim.keymap.set("n", "<C-n>", ":bnext<CR>")
vim.keymap.set("n", "<C-p>", ":bprev<CR>")

vim.keymap.set("n", "<C-j>", ":cnext<CR>zz")
vim.keymap.set("n", "<C-k>", ":cprev<CR>zz")

vim.keymap.set("n", "<C-w>%", ":vsplit<CR>")
vim.keymap.set("n", "<C-w>\"", ":split<CR>")

--
vim.keymap.set("n", "<leader>ll", ":so %<CR>")
vim.keymap.set("n", "<leader>l", ":.lua<CR>")
vim.keymap.set("v", "<leader>l", ":lua<CR>")

vim.keymap.set("n", "<leader>s", ":w<CR>")
vim.keymap.set("x", "<leader>p", '"_dP', { noremap = true })

vim.keymap.set('n', '<leader>DB', ":DBUIToggle<CR>")

vim.keymap.set("n", "<leader>m", function()
    if vim.opt.mouse._value == "" then
        vim.opt.mouse = "a"
        print("󰍽 Mouse is ON 󰍽")
    else
        vim.opt.mouse = ""
        print("󰍾 Mouse is OFF 󰍾")
    end
end, { noremap = true })
