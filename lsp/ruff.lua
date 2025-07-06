local on_attach = function(client, bufnr)
    if client.name == "ruff" then
        -- Ruff только для lint/формат/импортов: отключаем hover
        client.server_capabilities.hoverProvider = false
    end
end

return {
    cmd = { "ruff", "server" },
    on_attach = on_attach,
    filetypes = { 'python' },
    root_markers = { "pyproject.toml", "ruff.toml", ".ruff.toml", ".git" },
    settings = {},
}
