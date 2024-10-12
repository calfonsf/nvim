function SetupLsp()
    local lsp_zero = require('lsp-zero')
    local cmp = require('cmp')
    local cmp_action = require('lsp-zero').cmp_action()
    local lsps = { 'lua_ls', 'pyright', 'ts_ls', 'emmet_language_server', 'rust_analyzer', 'gopls' }

    require('mason').setup({})
    require('mason-lspconfig').setup({
        ensure_installed = lsps,
        handlers = {
            lsp_zero.default_setup,
        },
    })

    lsp_zero.on_attach(function(_, bufnr)
        local opts = { buffer = bufnr, remap = false }
        lsp_zero.buffer_autoformat()
        lsp_zero.format_on_save()

        vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end,
            vim.tbl_extend("force", opts, { desc = "Go to Definition" }))
        vim.keymap.set("n", "<C-h>", function() vim.lsp.signature_help() end,
            vim.tbl_extend("force", opts, { desc = "Signature Help" }))
        vim.keymap.set("n", "<leader>cf", vim.lsp.buf.format, vim.tbl_extend("force", opts, { desc = "Code Format" }))
    end)

    -- autocmp
    cmp.setup({
        mapping = cmp.mapping.preset.insert({
            ['<S-Tab>'] = cmp_action.tab_complete(),
            ['<Tab>'] = cmp.mapping.confirm({ select = true }),
            ['<Enter>'] = cmp.mapping.confirm({ select = true }),
            ['<C-Space>'] = cmp.mapping.complete(),
        }),
        window = {
            completion = cmp.config.window.bordered(),
            documentation = cmp.config.window.bordered()
        },
        snippet = {
            expand = function(args)
                require('luasnip').lsp_expand(args.body)
            end
        }
    })
end

return {
    --- Uncomment these if you want to manage LSP servers from neovim
    { 'williamboman/mason.nvim' },
    { 'williamboman/mason-lspconfig.nvim' },
    --------------------------------------
    { 'neovim/nvim-lspconfig' },
    { 'hrsh7th/cmp-nvim-lsp' },
    { 'hrsh7th/nvim-cmp' },
    { 'L3MON4D3/LuaSnip' },
    { 'VonHeikemen/lsp-zero.nvim',        branch = 'v3.x', config = SetupLsp },
    --------------------------------------
    --- For showing signatures
    {
        "ray-x/lsp_signature.nvim",
        event = "VeryLazy",
        opts = {},
        config = function(_, opts) require 'lsp_signature'.setup(opts) end
    },
}
