-- importing config files
require("config.remap")
require("config.lazy")
require("config.options")

if not vim.g.vscode then
    require("startup.lsp")
end

if vim.g.vscode then
    require("config.vscode")
end
