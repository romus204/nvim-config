vim.pack.add({
    "https://github.com/neovim/nvim-lspconfig",
})

vim.lsp.config('gopls', {
    settings = {
        gopls = {
            buildFlags = { "-tags=integration" },
            staticcheck = true,
            usePlaceholders = true,
            symbolMatcher = "fuzzy",
            analyses = {
                shadow = true,
                slicesdelete = true,
            }
        },
    },
})

vim.lsp.enable({
    'gopls',
    'lua_ls',
    'taplo',
    'jsonls',
    'bashls',
    'pyright',
    "ruff",
    "eslint",
    "yamlls",
    "ts_ls" })

vim.lsp.codelens.enable(true)
