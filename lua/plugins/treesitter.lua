require 'nvim-treesitter'.setup {
    install_dir = vim.fn.stdpath('data') .. '/treesitter'
}

require("nvim-treesitter").install({
    "lua",
    "python",
    "javascript",
    "typescript",
    "bash",
    "json",
    "html",
    "css",
    "go",
    "gomod",
    "gosum",
    "dockerfile",
    "toml",
    "yaml",
    "git_config",
    "git_rebase",
    "gitcommit",
    "gitignore",
    "markdown",
    "markdown_inline",
    "nginx",
    "sql",
    "query",
    "ssh_config",
    "tsx",
    "vim",
    "vimdoc",
    "xml",

})

vim.api.nvim_create_autocmd('FileType', {
    pattern = {
        "lua",
        "python",
        "javascript",
        "typescript",
        "bash",
        "json",
        "html",
        "css",
        "go",
        "gomod",
        "gosum",
        "dockerfile",
        "toml",
        "yaml",
        "git_config",
        "git_rebase",
        "gitcommit",
        "gitignore",
        "markdown",
        "markdown_inline",
        "nginx",
        "sql",
        "query",
        "ssh_config",
        "tsx",
        "vim",
        "vimdoc",
        "xml",

    },
    callback = function()
        vim.treesitter.start()
    end,
})
