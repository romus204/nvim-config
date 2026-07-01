vim.pack.add({
    "https://github.com/samiulsami/go-deep.nvim",
    "https://github.com/kkharji/sqlite.lua",

    {
        src = "https://github.com/saghen/blink.cmp",
        version = 'v1.10.2'
    },
})

require('blink.cmp').setup({
    keymap = {
        ['<CR>'] = { 'accept', 'fallback' },

        ['<S-Tab>'] = { 'select_prev', 'fallback_to_mappings' },
        ["<Tab>"] = { 'select_next', 'fallback_to_mappings' },

        ['<C-u>'] = { 'scroll_documentation_up', 'fallback' },
        ['<C-d>'] = { 'scroll_documentation_down', 'fallback' },
    },

    signature = { enabled = true },

    completion = {
        documentation = { auto_show = true },
        list = {
            selection = {
                preselect = false,
                auto_insert = false
            }
        },
        menu = {
            border = "bold",
            min_width = 25,
            max_height = 15,
            scrollbar = false,
        },
    },
    cmdline = {
        completion = {
            menu = { auto_show = true },
            list = {
                selection = {
                    preselect = false,
                    auto_insert = false
                }
            },
        },
        keymap = {
            ['<CR>'] = { 'accept', 'fallback' },
        }
    },

    sources = {
        default = { 'lsp', 'path', 'snippets', 'buffer', "go_deep", },
        providers = {
            go_deep = {
                module = "go_deep.blink",
                async = true,
                opts = {
                    min_keyword_length = 2,
                    max_from_same_package = 5,
                },
            },
        },
    },

    fuzzy = {
        implementation = "prefer_rust_with_warning"
    }
})

vim.api.nvim_set_hl(0, "BlinkCmpMenu", { bg = "#262626" })
vim.api.nvim_set_hl(0, "BlinkCmpMenuBorder", { bg = "#262626" })
vim.api.nvim_set_hl(0, "BlinkCmpMenuSelection", { bg = "#454545" })
