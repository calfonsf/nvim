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

vim.cmd.colorscheme("tokyonight")
