-- Themes
--[[
SCHEMES
1- tokyonight, tokyonight-night
2- rose-pine
3- tokyodark
]]

-- Set Colorscheme
function Colorscheme(theme)
	Color = Color or theme

	require(Color).setup({
		disable_italics = true
	})

	vim.cmd.colorscheme(Color)
end

require("tokyodark").setup({
    gamma = 0.85,
    styles = {
        comments = {}, -- style for comments
        keywords = {}, -- style for keywords
        identifiers = {}, -- style for identifiers
        functions = {}, -- style for functions
        variables = {}, -- style for variables
    },
})


vim.cmd.colorscheme("catppuccin-mocha")
