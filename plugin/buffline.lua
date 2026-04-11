vim.pack.add({
    "https://github.com/nvim-tree/nvim-web-devicons",

    "https://github.com/akinsho/bufferline.nvim",
})

require("bufferline").setup {
    options = {
        mode = 'buffers',
        offsets = {
            {
                filetype = "neo-tree",
                text = "File Explorer",
                separator = true,
                padding = 1
            }
        },
        diagnostics = "nvim_lsp",
        indicator = {
            icon = '  ', -- this should be omitted if indicator style is not 'icon'
            style = 'icon'
        },
    }
}

vim.keymap.set("n", "<Tab>", ":BufferLineCycleNext<CR>")
vim.keymap.set("n", "<s-Tab>", ":BufferLineCyclePrev<CR>")
vim.keymap.set('n', '<leader>qo', ":BufferLineCloseOthers<CR>", { desc = "Close other buffers" })
vim.keymap.set("n", "<leader>qb", ":BufferLinePickClose<CR>")

