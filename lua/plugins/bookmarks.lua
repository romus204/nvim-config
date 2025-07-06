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
