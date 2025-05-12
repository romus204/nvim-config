return {
    cmd = { "gopls" },
    filetypes = { "go", "gomod", "gowork", "gotmpl" },
    settings = {
        gopls = {
            experimentalPostfixCompletions = true,
            staticcheck = true,
            analyses = {
                unusedparams = true,
                shadow = true,
            },
            usePlaceholders = true,
            completeUnimported = true,
            matcher = "fuzzy",
            symbolMatcher = "fuzzy",
        },
    },
}
