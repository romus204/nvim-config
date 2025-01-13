require('telescope').setup({

    defaults = {
        layout_strategy = 'vertical',
        bottom_pane = {
            height = 25,
            preview_cutoff = 120,
            prompt_position = "top"
        },
        center = {
            height = 0.4,
            preview_cutoff = 40,
            prompt_position = "top",
            width = 0.5
        },
        cursor = {
            height = 0.9,
            preview_cutoff = 40,
            width = 0.8
        },
        horizontal = {
            height = 0.9,
            preview_cutoff = 120,
            prompt_position = "bottom",
            width = 0.8
        },
        vertical = {
            height = 0.9,
            preview_cutoff = 120,
            prompt_position = "bottom",
            width = 0.9,
            results_width = 0.9,
        },
        path_display = { "smart" },
        dynamic_preview_title = true,
    }
})
