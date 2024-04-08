--global
vim.g.mapleader = " "
vim.g.maplocalleader = "m"

--filesystem
vim.keymap.set("n", "<leader>.", vim.cmd.Oil)
vim.keymap.set("n", "<leader>oc", "<CMD>cd %:h<CR>")

--neotree
vim.keymap.set("n", "<leader>pt", vim.cmd.Neotree)

--toogleterm
vim.keymap.set("n", "<leader>tt", vim.cmd.ToggleTerm)

--system clipboard
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")

--move around
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

--move lines around
vim.keymap.set("n", "<A-j>", ":m .+1<CR>==")
vim.keymap.set("n", "<A-k>", ":m .-2<CR>==")
vim.keymap.set("v",   "J"  , ":m '>+1<CR>gv=gv")
vim.keymap.set("v",   "K"  , ":m '<-2<CR>gv=gv")

--open in Browser
vim.keymap.set("n", "<leader>ob", "<CMD>exec 'silent !%:r.html'<CR>")

--Clipboard
vim.keymap.set("n", "y", "\"+y")
vim.keymap.set("n", "Y", "\"+Y")
vim.keymap.set("n", "<leader>P", "\"+P")


function SetupWichKey()
	X = 1
end
