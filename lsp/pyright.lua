local on_attach = function(client, bufnr)
    if client.name == "pyright" then
        -- Отключаем lint/формат/импорт в Pyright, чтобы не дублировать Ruff
        client.server_capabilities.documentFormattingProvider = false
        client.server_capabilities.documentRangeFormattingProvider = false
        client.server_capabilities.codeActionProvider = false
        client.server_capabilities.organizeImportsProvider = false
    end
end

return {
    cmd = { 'pyright-langserver', '--stdio' },
    filetypes = { 'python' },
    on_attach = on_attach,
    root_markers = {
        'pyproject.toml',
        'setup.py',
        'setup.cfg',
        'requirements.txt',
        'Pipfile',
        'pyrightconfig.json',
        '.git',
    },
    settings = {
        pyright = {
            disableOrganizeImports = true,
        },
        python = {
            analysis = {
                -- Ignore all files for analysis to exclusively use Ruff for linting
                ignore = { '*' },
            },
        },
    },
}
