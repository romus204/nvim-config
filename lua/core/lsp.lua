vim.pack.add({
    "https://github.com/neovim/nvim-lspconfig",
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
