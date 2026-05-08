vim.pack.add({
    "https://github.com/neovim/nvim-lspconfig",
})

vim.lsp.enable({
    'gopls',
    'luals',
    'taplo',
    'jsonls',
    'bashls',
    'pyright',
    "ruff",
    "eslint",
    "yamlls",
    "tsls" })

vim.lsp.codelens.enable(true)
