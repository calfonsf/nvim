-- Themes
--[[
SCHEMES
1- tokyonight, tokyonight-night
2- rose-pine
]]

-- Set Colorscheme
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

--setting-color
Colorscheme("rose-pine")
