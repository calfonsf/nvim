-- Bootstrap lazy.vim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end

vim.opt.rtp:prepend(lazypath)

-- Config lazy.vim
require("lazy").setup({
	spec = {
		-- import your plugins
		{ import = "plugins" },
	},
	defaults = {
		-- Set this to `true` to have all your plugins lazy-loaded by default.
		-- Only do this if you know what you are doing, as it can lead to unexpected behavior.
		lazy = false, -- should plugins be lazy-loaded?
		-- It's recommended to leave version=false for now, since a lot the plugin that support versioning,
		-- have outdated releases, which may break your Neovim install.
		version = nil, -- always use the latest git commit
		-- version = "*", -- try installing the latest stable version for plugins that support semver
		-- default `cond` you can use to globally disable a lot of plugins
		-- when running inside vscode for example
		cond = not vim.g.vscode,
	},
})
