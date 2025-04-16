local lspconfig = require("lspconfig")
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

lspconfig.gopls.setup({
    capabilities = capabilities,
    filetypes = { "go", "gomod", "gowork", "gotmpl" },
    root_dir = lspconfig.util.root_pattern("go.work", "go.mod", ".git"),
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

    on_attach = function(client, bufnr)
        autosave(client, bufnr)
        require("lsp_signature").on_attach({}, bufnr)
    end,


})

lspconfig.lua_ls.setup {
    settings = {
        Lua = {
            runtime = {
                version = 'LuaJIT',
                path = vim.split(package.path, ';'),
            },
            diagnostics = {
                globals = { 'vim' },
            },
            telemetry = {
                enable = false,
            },
        },
    },

    on_attach = function(client, bufnr)
        autosave(client, bufnr)
    end,
}

lspconfig.taplo.setup {
    on_attach = function(client, bufnr)
        autosave(client, bufnr)
    end,
}

lspconfig.bashls.setup {
    on_attach = function(client, bufnr)
        autosave(client, bufnr)
    end,
}

lspconfig.jsonls.setup {
    capabilities = capabilities,
    on_attach = function(client, bufnr)
        autosave(client, bufnr)
    end,
}

lspconfig.ts_ls.setup {
    on_attach = function(client, bufnr)
        autosave(client, bufnr)
    end,
}
