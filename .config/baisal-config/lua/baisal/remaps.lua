vim.g.mapleader = " "
vim.keymap.set("n", "<leader>ex", "<CMD>Oil<CR>")
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")
vim.keymap.set("n", "J", "mzJ`z")

vim.keymap.set("x", "<leader>p", "\"_dP")

vim.keymap.set("n", "<C-h>", "<CMD>set hlsearch!<CR>")

vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "m", "<nop>")

vim.keymap.set("n", "<leader>bn", "<CMD>bnext<CR>")
vim.keymap.set("n", "<leader>bp", "<CMD>bprev<CR>")
vim.keymap.set("n", "<leader>bc", "<CMD>bprev<CR>")
