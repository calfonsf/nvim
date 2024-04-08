local status_ok, alpha = pcall(require, "alpha")

if not status_ok then
 return
end

local dashboard = require("alpha.themes.dashboard")

--Vars
CONFIG_PATH = "~\\AppData\\local\\nvim\\"

-- THIS IS THE LOGO
dashboard.section.header.val = {
	[[                                       ]],
	[[    ▄   ▄███▄   ████▄     ▄   ▄█ █▀▄▀█ ]],
	[[     █  █▀   ▀  █   █      █  ██ █ █ █ ]],
	[[ ██   █ ██▄▄    █   █ █     █ ██ █ ▄ █ ]],
	[[ █ █  █ █▄   ▄▀ ▀████  █    █ ▐█ █   █ ]],
	[[ █  █ █ ▀███▀           █  █   ▐    █  ]],
	[[ █   ██                  █▐        ▀   ]],
	[[                         ▐             ]],
	[[                                       ]],
}

-- THIS IS THE BUTTONS TEXT AND COMMANDS
dashboard.section.buttons.val = {
	dashboard.button("f", "🗎  Notes", ":Neorg workspace notes<CR>"),
	dashboard.button("r", "  Recently used files", ":Telescope oldfiles <CR>"),
	dashboard.button("t", "  Find text", ":Telescope live_grep <CR>"),
	dashboard.button("c", "  Configuration", string.format(":edit %s<CR>",CONFIG_PATH)),
	dashboard.button("q", "  Quit Neovim", ":qa<CR>"),
}

-- THIS IS A STUPID FRASE
local function footer()
	return "Don't Stop Until You are Proud..."
end

-- I DONT KNOW WHAT THIS ARE ABOUT
dashboard.section.footer.val = footer()

dashboard.section.footer.opts.hl = "Type"
dashboard.section.header.opts.hl = "Include"
dashboard.section.buttons.opts.hl = "Keyword"
dashboard.opts.opts.noautocmd = true

alpha.setup(dashboard.opts)
