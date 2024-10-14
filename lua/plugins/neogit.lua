return {
    "NeogitOrg/neogit",
    dependencies = {
        "nvim-lua/plenary.nvim",         -- required
        "nvim-telescope/telescope.nvim", -- optional
        "sindrets/diffview.nvim",        -- optional
        "ibhagwan/fzf-lua",              -- optional
    },
    config = function()
        --git
        vim.keymap.set("n", "<leader>gg", vim.cmd.Neogit, { desc = "Neogit Status" })
        require("neogit").setup()
    end
}
