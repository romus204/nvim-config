require("dbee").setup({
    editor = {
        window_options = {},
        buffer_options = {},

        mappings = {
            { key = "MM", mode = "v", action = "run_selection" },
            { key = "MM", mode = "n", action = "run_file" },
        },
    },
    result = {
        focus_result = false,
        mappings = {
            { key = "L", mode = "", action = "page_next" },
            { key = "H", mode = "", action = "page_prev" },
            { key = "K", mode = "", action = "page_last" },
            { key = "J", mode = "", action = "page_first" },
        },
    },
    drawer = { disable_help = true },
    default_connection = "local",
})
