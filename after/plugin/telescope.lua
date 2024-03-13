local builtin = require('telescope.builtin')

-- fuzzy find
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})

-- buffers
vim.keymap.set('n', '<leader>pb', builtin.buffers, {})
