require("referencer").setup({
    enable = true,
    format = "  %d refs",
    show_no_reference = true,
    kinds = { 5, 6, 8, 12, 13, 14, 23, 11 },
    virt_text_pos = "eol",
    color = '#a88654',
    pattern = nil,
    lsp_servers = { 'gopls', 'pyright' }
})
