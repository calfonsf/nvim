return {
    "folke/which-key.nvim",
    event = "VeryLazy",
    init = function()
        vim.o.timeout = true
        vim.o.timeoutlen = 300
    end,
    config = function()
        local wk = require("which-key")
        wk.add({
            { "<leader>f", group = "Find" },
            { "<leader>c", group = "Code" },
            { "<leader>o", group = "Open" },
            { "<leader>t", group = "Toggle" },
            {
                "<leader>b",
                group = "buffers",
                expand = function()
                    return require("which-key.extras").expand.buf()
                end
            },
            {
                -- Nested mappings are allowed and can be added in any order
                -- Most attributes can be inherited or overridden on any level
                -- There's no limit to the depth of nesting
                mode = { "n", "v" },                          -- NORMAL and VISUAL mode
                { "<leader>q", "<cmd>q<cr>", desc = "Quit" }, -- no need to specify mode since it's inherited
            }
        })

        --Example
        --1 { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find File", mode = "n" },
        --2 { "<leader>fb", function() print("hello") end, desc = "Foobar" },
    end
}
