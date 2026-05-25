vim.pack.add({
    "https://github.com/saghen/blink.compat",
    "https://github.com/samiulsami/cmp-go-deep",
    "https://github.com/kkharji/sqlite.lua",

    {
        src = "https://github.com/saghen/blink.cmp",
        version = 'v1'
    },
})

require('blink.cmp').setup({
    keymap = {
        ['<CR>'] = { 'select_and_accept', 'fallback' },

        ['<S-Tab>'] = { 'select_prev', 'fallback_to_mappings' },
        ["<Tab>"] = { 'select_next', 'fallback_to_mappings' },

        ['<C-u>'] = { 'scroll_documentation_up', 'fallback' },
        ['<C-d>'] = { 'scroll_documentation_down', 'fallback' },
    },

    signature = { enabled = true },

    completion = {
        documentation = { auto_show = true },
        menu = {
            border = "bold",
            min_width = 25,
            max_height = 15,
            scrollbar = false,
        },
    },
    cmdline = {
        completion = { menu = { auto_show = true } },
        keymap = {
            ['<CR>'] = { 'select_and_accept', 'fallback' },
        }
    },

    sources = {
        default = { 'lsp', 'path', 'snippets', 'buffer', "go_deep", },
        providers = {
            go_deep = {
                name = "go_deep",
                module = "blink.compat.source",
                min_keyword_length = 3,
                max_items = 5,
                ---@module "cmp_go_deep"
                ---@type cmp_go_deep.Options
                opts = {
                    -- Enable/disable notifications.
                    notifications = true,

                    -- Filetypes to enable the source for.
                    filetypes = { "go" },

                    -- How to get documentation for Go symbols.
                    -- options:
                    -- "hover" - LSP 'textDocument/hover'. Prettier.
                    -- "regex" - faster and simpler.
                    get_documentation_implementation = "hover",

                    -- How to get the package names.
                    -- options:
                    -- "treesitter" - accurate but slower.
                    -- "regex" - faster but can fail in edge cases.
                    get_package_name_implementation = "treesitter",

                    -- Whether to exclude vendored packages from completions.
                    exclude_vendored_packages = false,

                    -- Whether to exclude internal packages that cannot be imported.
                    -- Follows Go's internal package rule: code can only import from "internal"
                    -- if it's in a subtree rooted at the parent of "internal".
                    exclude_internal_packages = true,

                    -- Timeout in milliseconds for fetching documentation.
                    -- Controls how long to wait for documentation to load.
                    documentation_wait_timeout_ms = 100,

                    -- Maximum time (in milliseconds) to wait before "locking-in" the current request and sending it to gopls.
                    debounce_gopls_requests_ms = 0,

                    -- Path to store the SQLite database
                    -- Default: "~/.local/share/nvim/cmp_go_deep.sqlite3"
                    db_path = vim.fn.stdpath("data") .. "/cmp_go_deep.sqlite3",
                },
            },
        },
    },

    fuzzy = {
        implementation = "prefer_rust_with_warning"
    }
})

vim.api.nvim_set_hl(0, "BlinkCmpMenu", {bg = "#262626",})
vim.api.nvim_set_hl(0, "BlinkCmpMenuBorder", {bg = "#262626",})
vim.api.nvim_set_hl(0, "BlinkCmpMenuSelection", {bg = "#454545",})
