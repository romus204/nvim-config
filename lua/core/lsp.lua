local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

local function autosave(client, bufnr)
    if client.server_capabilities.documentFormattingProvider then
        vim.api.nvim_create_autocmd("BufWritePre", {
            buffer = bufnr,
            callback = function()
                vim.lsp.buf.format({ async = false })
            end,
        })
    end
end


vim.lsp.config('*', {
    root_markers = { "go.work", "go.mod", ".git", ".luarc.json", ".luarc.jsonc", 'tsconfig.json', 'jsconfig.json', 'package.json', },
    capabilities = capabilities,
    on_attach = function(client, bufnr)
        -- autosave(client, bufnr)
        require("lsp_signature").on_attach({}, bufnr)
    end,


})

vim.lsp.enable({ 'gopls', 'luals', 'taplo', 'jsonls', 'tsls', 'bashls', 'pyright', "ruff" })
