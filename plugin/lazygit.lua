vim.pack.add({
    "https://github.com/nvim-lua/plenary.nvim",

    "https://github.com/kdheepak/lazygit.nvim",
})

vim.keymap.set('n', '<leader>gl', '<Cmd>LazyGit<CR>', { desc = 'LazyGit' })

