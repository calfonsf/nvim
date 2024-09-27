--global
vim.g.mapleader = " "
vim.g.maplocalleader = "m"

--filesystem
vim.keymap.set("n", "<leader>.", vim.cmd.Oil, {desc = "File Explorer"})
vim.keymap.set("n", "<leader>oc", "<CMD>cd %:h<CR>", {desc = "Open Current Dir"})

--neotree
vim.keymap.set("n", "<leader>ot", vim.cmd.Neotree, {desc = "Open Neotree"})

--toogleterm
vim.keymap.set("n", "<leader>tt", vim.cmd.ToggleTerm, { desc = "Toggle Terminal"} )


--move around
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

--move lines around
vim.keymap.set("n", "<A-j>", ":m .+1<CR>==")
vim.keymap.set("n", "<A-k>", ":m .-2<CR>==")
vim.keymap.set("v", "<A-k>", ":m '<-2<CR>gv=gv")
vim.keymap.set("v", "<A-j>", ":m '>+1<CR>gv=gv")

--open in Browser
vim.keymap.set("n", "<leader>ob", "<CMD>exec 'silent !%:r.html'<CR>", { desc = "Open In Browser" })

--Clipboard
vim.keymap.set("n", "<leader>P", "\"+P", { desc = "Paste From Clipboard" })
