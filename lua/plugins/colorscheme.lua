-- Themes
function Colorscheme(color)
    color = color or "rose-pine"

    -- this works for rose-pine
    require(color).setup({
        -- transparent = true,

        styles = {
            bold = true,
            italic = false,
            -- transparency = true,
        }
    })
    vim.cmd.colorscheme(color)
    -- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    -- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

return {
    {
        "folke/tokyonight.nvim",
        priority = 1000,
        config = function()
            Colorscheme("tokyonight")
        end
    },
    {
        "rose-pine/neovim",
        name = "rose-pine",
        priority = 1000,

    }
}
