return {
    cmd = { "gopls" },
    filetypes = { "go", "gomod", "gowork", "gotmpl" },
    settings = {
        gopls = {
            staticcheck = true,
            analyses = {
                unusedparams = true,
            },
            usePlaceholders = false,
            completeUnimported = true,
            matcher = "fuzzy",
            symbolMatcher = "fuzzy",
        },
    },
}
