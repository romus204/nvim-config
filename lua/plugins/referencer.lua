require("referencer").setup({
    enable = true,
    format = "  %d refs",
    show_no_reference = true,
    kinds = { 5, 6, 8, 12, 13, 14, 23 },
    virt_text_pos = "eol",
    color = '#ff9900',
    pattern = nil,
})
