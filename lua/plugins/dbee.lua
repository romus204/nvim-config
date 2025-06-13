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
            { key = "L",     mode = "",  action = "page_next" },
            { key = "H",     mode = "",  action = "page_prev" },
            { key = "K",     mode = "",  action = "page_last" },
            { key = "J",     mode = "",  action = "page_first" },

            -- yank rows as csv/json
            { key = "yaj",   mode = "n", action = "yank_current_json" },
            { key = "yaj",   mode = "v", action = "yank_selection_json" },
            { key = "yaJ",   mode = "",  action = "yank_all_json" },
            { key = "yac",   mode = "n", action = "yank_current_csv" },
            { key = "yac",   mode = "v", action = "yank_selection_csv" },
            { key = "yaC",   mode = "",  action = "yank_all_csv" },

            -- cancel current call execution
            { key = "<C-c>", mode = "",  action = "cancel_call" },

        },
    },
    drawer = { disable_help = true },
    default_connection = "local",
})
