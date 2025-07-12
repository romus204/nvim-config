require("codecompanion").setup({
    adapters = {
        gemini = function()
            return require("codecompanion.adapters").extend("gemini", {
                schema = {
                    model = {
                        default = "gemini-2.5-pro",
                    },
                },
                env = {
                    api_key = os.getenv("GEMINI_API_KEY"),
                },
            })
        end,
        ollama = function()
            return require("codecompanion.adapters").extend("ollama", {
                schema = {
                    model = { default = "qwen2.5-coder:14b" },
                },
            })
        end,
    },
    strategies = {
        chat = { adapter = "ollama" },
        inline = { adapter = "ollama" },
        agent = { adapter = "ollama" },
        cmd = { adapter = "ollama" },
    },
})
