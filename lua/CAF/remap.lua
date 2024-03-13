--global
vim.g.mapleader = " "

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

--open in Browser
vim.keymap.set("n", "<leader>ob", "<CMD>exec 'silent !%:r.html'<CR>")

function SetupWichKey()
	X = 1
end
