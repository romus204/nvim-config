vim.pack.add({
    "https://github.com/romus204/go-tagger.nvim",
})

require("go-tagger").setup({
    skip_private = true,
})
