vim.g.mapleader = " "

-- Quick save
vim.keymap.set("n", "<leader>s", ":w<CR>", { noremap = true })

-- Buffer navigation
vim.keymap.set("n", "<C-n>", ":bnext<CR>", { noremap = true })
vim.keymap.set("n", "<C-p>", ":bprev<CR>", { noremap = true })

-- Window navigation
vim.keymap.set("n", "<leader>h", ":wincmd h<CR>", { noremap = true })
vim.keymap.set("n", "<leader>j", ":wincmd j<CR>", { noremap = true })
vim.keymap.set("n", "<leader>k", ":wincmd k<CR>", { noremap = true })
vim.keymap.set("n", "<leader>l", ":wincmd l<CR>", { noremap = true })

-- Quickfix List navigation
vim.keymap.set("n", "<C-j>", ":cnext<CR>zz", { noremap = true })
vim.keymap.set("n", "<C-k>", ":cprev<CR>zz", { noremap = true })

-- Center screen
vim.keymap.set("n", "G", "Gzz", { noremap = true })
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzV")
vim.keymap.set("n", "N", "NzzzV")

-- Greatest remap ever!
vim.keymap.set("x", "<leader>p", '"_dP', { noremap = true })

-- Undo breakpoints
vim.keymap.set("i", ",", ",<c-g>u", { noremap = true })
vim.keymap.set("i", ".", ".<c-g>u", { noremap = true })

-- Merge lines with a stationary cursor
vim.keymap.set("n", "J", "mzJ`z", { noremap = true })

-- Move visual selection
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")

-- Change distance of <C-d> and <C-u>
vim.cmd([[nnoremap <expr> <C-d> (winheight(0) / 3) . "<C-d>"]])
vim.cmd([[nnoremap <expr> <C-u> (winheight(0) / 3) . "<C-u>"]])

-- Runs sessionizer script in a new tmux window
vim.keymap.set("n", "<A-p>", "<cmd>silent !tmux neww {noremap=true}<CR>")

-- Mouse toggle
vim.keymap.set("n", "M",
    function()
        if vim.opt.mouse._value == "" then
            vim.opt.mouse = "a"
            print("󰍽 Mouse is ON 󰍽")
        else
            vim.opt.mouse = ""
            print("󰍾 Mouse is OFF 󰍾")
        end
    end,
    { noremap = true }
)
