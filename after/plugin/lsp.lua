--lsp
local lsp_zero = require('lsp-zero')
local cmp = require('cmp')
local cmp_action = require('lsp-zero').cmp_action()

--python, rust, go, typescript, lua, emmet.
local lsps = {'lua_ls', 'pyright', 'tsserver', 'emmet_language_server', 'rust_analyzer', 'gopls'}

require('mason').setup({})
require('mason-lspconfig').setup({
  ensure_installed = lsps,
  handlers = {
    lsp_zero.default_setup,
  },
})

lsp_zero.on_attach(function (client, bufnr)

	local opts = {buffer = bufnr, remap = false}

	vim.keymap.set("n", "<leader>gd", function () vim.lsp.buf.definition() end, opts)
	vim.keymap.set("n", "<C-h>", function () vim.lsp.signature_help() end, opts)
	vim.keymap.set("n","<leader>cf", vim.lsp.buf.format, opts)
end)

--servers
--lsp_zero.setup_servers(lsps)
cmp.setup({
	mapping = cmp.mapping.preset.insert({
		['<S-Tab>'] = cmp_action.tab_complete(),
		['<Tab>'] = cmp.mapping.confirm({select = true}),
		['<Enter>'] = cmp.mapping.confirm({select = true}),
		['<C-Space>'] = cmp.mapping.complete(),
	}),
	window = {
		completion = cmp.config.window.bordered(),
		documentation = cmp.config.window.bordered()
	},
	snippet = {
		expand = function (args)
			require('luasnip').lsp_expand(args.body)
		end
	}
})
