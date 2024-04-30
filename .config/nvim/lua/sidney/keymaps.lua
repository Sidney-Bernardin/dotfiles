local keymap = vim.keymap.set
local opts = { noremap = true }

vim.g.mapleader = " "

-- Quick save
keymap("n", "<leader>s", ":w<CR>", opts)

-- Buffer navigation
keymap("n", "<C-n>", ":bnext<CR>", opts)
keymap("n", "<C-p>", ":bprev<CR>", opts)

-- Window navigation
keymap("n", "<leader>h", ":wincmd h<CR>", opts)
keymap("n", "<leader>j", ":wincmd j<CR>", opts)
keymap("n", "<leader>k", ":wincmd k<CR>", opts)
keymap("n", "<leader>l", ":wincmd l<CR>", opts)

-- Quickfix List navigation
keymap("n", "<C-j>", ":cnext<CR>zz", opts)
keymap("n", "<C-k>", ":cprev<CR>zz", opts)

-- Center screen
keymap("n", "G", "Gzz", opts)
keymap("n", "<C-d>", "<C-d>zz")
keymap("n", "<C-u>", "<C-u>zz")
keymap("n", "n", "nzzzV")
keymap("n", "N", "NzzzV")

-- Greatest remap ever!
keymap("x", "<leader>p", '"_dP', opts)

-- Undo breakpoints
keymap("i", ",", ",<c-g>u", opts)
keymap("i", ".", ".<c-g>u", opts)

-- Merge lines with a stationary cursor.
keymap('n', 'J', 'mzJ`z', opts)

-- Move visual selection
keymap('v', 'J', ":m '>+1<CR>gv=gv")
keymap('v', 'K', ":m '<-2<CR>gv=gv")

-- Change distance of <C-d> and <C-u>
vim.cmd([[nnoremap <expr> <C-d> (winheight(0) / 3) . "<C-d>"]])
vim.cmd([[nnoremap <expr> <C-u> (winheight(0) / 3) . "<C-u>"]])

-- Runs sessionizer script in a new tmux window.
keymap("n", "<A-p>", "<cmd>silent !tmux neww sessionizer<CR>")

-- Mouse toggle
keymap("n", "M", function()
    if vim.opt.mouse._value == "" then
        vim.opt.mouse = "a"
        print("󰍽 Mouse is ON 󰍽")
    else
        vim.opt.mouse = ""
        print("󰍾 Mouse is OFF 󰍾")
    end
end, opts)
