vim.pack.add({
    "https://github.com/dlyongemallo/diffview.nvim",
})

vim.keymap.set('n', '<leader>gdc', '<Cmd>DiffviewOpen<CR>', { desc = 'Diff current' })
vim.keymap.set('n', '<leader>gdp', '<Cmd>DiffviewOpen HEAD~1..HEAD<CR>', { desc = 'Diff 1 pev commit' })

