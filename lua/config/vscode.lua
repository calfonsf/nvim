local vscode = require('vscode')

vim.keymap.set("n", "<leader>ff", function() vscode.action("workbench.action.quickOpen") end, { desc = "Find Files" })
vim.keymap.set("n", "<leader>fg", function() vscode.action("workbench.action.findInFiles") end, { desc = "Find Files" })
