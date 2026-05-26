vim.pack.add({
    "https://github.com/terrortylor/nvim-comment",
})

require('nvim_comment').setup()

vim.keymap.set('n', '<leader>/', ':CommentToggle<CR>', { noremap = true, silent = true })
vim.keymap.set('v', '<leader>/', ':CommentToggle<CR>', { noremap = true, silent = true })
