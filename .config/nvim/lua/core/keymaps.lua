local x = vim.keymap.set

x("n", "G", "Gzz", { noremap = true })
x("n", "<C-d>", "<C-d>zz", { noremap = true })
x("n", "<C-u>", "<C-u>zz", { noremap = true })
x("n", "n", "nzzzV", { noremap = true })
x("n", "N", "NzzzV", { noremap = true })
x("n", "J", "mzJ`z", { noremap = true })

x("v", "J", ":m '>+1<CR>gv=gv")
x("v", "K", ":m '<-2<CR>gv=gv")

x("i", ",", ",<c-g>u", { noremap = true })
x("i", ".", ".<c-g>u", { noremap = true })

-- Change distance of <C-d> and <C-u>
vim.cmd([[nnoremap <expr> <C-d> (winheight(0) / 3) . "<C-d>"]])
vim.cmd([[nnoremap <expr> <C-u> (winheight(0) / 3) . "<C-u>"]])

--

x("n", "<C-n>", ":bnext<CR>")
x("n", "<C-p>", ":bprev<CR>")

x("n", "<C-j>", ":cnext<CR>zz")
x("n", "<C-k>", ":cprev<CR>zz")

x("n", "<C-w>%", ":vsplit<CR>")
x("n", "<C-w>\"", ":split<CR>")

--
x("n", "<leader>ll", ":so %<CR>")
x("n", "<leader>l", ":.lua<CR>")
x("v", "<leader>l", ":lua<CR>")

x("n", "<leader>s", ":w<CR>")
x("x", "<leader>p", '"_dP', { noremap = true })

x('n', '<leader>DB', ":DBUIToggle<CR>")

x("n", "<leader>m", function()
	if vim.opt.mouse._value == "" then
		vim.opt.mouse = "a"
		print("󰍽 Mouse is ON 󰍽")
	else
		vim.opt.mouse = ""
		print("󰍾 Mouse is OFF 󰍾")
	end
end, { noremap = true })
