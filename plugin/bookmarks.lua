vim.pack.add({
    "https://github.com/nvim-lua/plenary.nvim",
    "https://github.com/kkharji/sqlite.lua",
    "https://github.com/nvim-telescope/telescope.nvim",
    "https://github.com/stevearc/dressing.nvim",

    "https://github.com/LintaoAmons/bookmarks.nvim",
})

require("bookmarks").setup({
    signs = {
        -- Sign mark icon and color in the gutter
        mark = {
            icon = "󰃁",
            color = "#506050",
            line_bg = "#263026",
        },
        desc_format = function(bookmark)
            return ""
        end,

    },
    treeview = {
        window_split_dimension = 65,
    },


})

vim.keymap.set('n', '<leader>mt', '<Cmd>BookmarksTree<CR>', { desc = "Bookmarks tree" })
vim.keymap.set('n', '<leader>mm', '<Cmd>BookmarksMark<CR>', { desc = "Bookmarks mark" })

