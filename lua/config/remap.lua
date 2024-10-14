--global
vim.g.mapleader = " "
vim.g.maplocalleader = "m"

--filesystem
vim.keymap.set("n", "<leader>oc", "<CMD>cd %:h<CR>", { desc = "Open Current Dir" })

--move around
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

--move lines around
vim.keymap.set("n", "<A-j>", ":m .+1<CR>==")
vim.keymap.set("n", "<A-k>", ":m .-2<CR>==")
vim.keymap.set("v", "<A-j>", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "<A-k>", ":m '<-2<CR>gv=gv")
vim.keymap.set("n", "<A-down>", ":m .+1<CR>==")
vim.keymap.set("n", "<A-up>", ":m .-2<CR>==")
vim.keymap.set("v", "<A-down>", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "<A-up>", ":m '<-2<CR>gv=gv")

--open in Browser
vim.keymap.set("n", "<leader>ob", "<CMD>exec 'silent !%:r.html'<CR>", { desc = "Open In Browser" })

--Clipboard
vim.keymap.set("n", "<leader>P", "\"+P", { desc = "Paste From Clipboard" })
vim.keymap.set("n", "<leader>y", "\"+yy", { desc = "Copy To Clipboard" })
vim.keymap.set("v", "<leader>P", "\"+P", { desc = "Paste From Clipboard" })
vim.keymap.set("v", "<leader>Y", "\"+Y", { desc = "Copy To Clipboard" })
