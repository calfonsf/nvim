return {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.4',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
        local builtin = require('telescope.builtin')

        --Vars
        if vim.loop.os_uname().sysname == "Windows_NT" then
            CONFIG_PATH = "~\\AppData\\local\\nvim"
            PROJECTS_PATH = "D:\\Workstation\\Projects\\Code"
        end

        -- fuzzy find
        vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = "Find Files" })

        -- buffers
        vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = "Find Buffers" })

        -- recent
        vim.keymap.set('n', '<leader>fr', builtin.oldfiles, { desc = "Find Recent" })

        -- config
        vim.keymap.set('n', '<leader>fc', function() builtin.find_files({ cwd = CONFIG_PATH }) end,
            { desc = "Find Nvim Config" })

        -- projects
        -- vim.keymap.set('n', '<leader>fp', function() builtin.fd({ cwd = PROJECTS_PATH }) end,
        -- { desc = "Find Projects" })
    end
}
