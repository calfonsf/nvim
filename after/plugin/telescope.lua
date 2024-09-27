local builtin = require('telescope.builtin')

-- fuzzy find
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = "Find Files" })

-- buffers
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = "Find Buffers" })

-- recent
vim.keymap.set('n', '<leader>fr', builtin.oldfiles, { desc = "Find Recent" })
