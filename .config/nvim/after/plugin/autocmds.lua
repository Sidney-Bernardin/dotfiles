-- Highlight yank.
vim.cmd([[ au TextYankPost * silent! lua vim.highlight.on_yank({higroup="HighlightYank", timeout=300}) ]])
