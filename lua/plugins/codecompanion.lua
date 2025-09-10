local adapters = require("codecompanion.adapters")

local gemini_adapter = function()
    return adapters.extend("gemini", {
        schema = {
            model = { default = "gemini-2.5-flash", },
        },
        env = { api_key = os.getenv("GEMINI_API_KEY"), },
    })
end

local ollama_adapter = function()
    return adapters.extend("ollama", {
        schema = {
            model = { default = "qwen2.5-coder:14b" },
        },
    })
end

require("codecompanion").setup({
    opts = {
        language = 'Russian',
    },
    adapters = {
        http = {
            gemini = gemini_adapter,
            ollama = ollama_adapter,
        }
    },
    strategies = {
        chat = { adapter = "gemini" },
        inline = { adapter = "gemini" },
        agent = { adapter = "gemini" },
        cmd = { adapter = "gemini" },
    },
})
