local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git", "clone", "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git", "--branch=stable",
        lazypath
    })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    {
        "nvim-neo-tree/neo-tree.nvim",
        dependencies = { "nvim-lua/plenary.nvim", "nvim-tree/nvim-web-devicons", "MunifTanjim/nui.nvim" }
    },

    { 'nvim-treesitter/nvim-treesitter' },

    { "rebelot/kanagawa.nvim" },

    { 'hrsh7th/cmp-nvim-lsp' },
    { 'hrsh7th/cmp-buffer' },
    { 'hrsh7th/cmp-git' },
    { 'hrsh7th/cmp-path' },
    { 'hrsh7th/cmp-cmdline' },
    { 'hrsh7th/nvim-cmp' },
    { 'hrsh7th/cmp-nvim-lua' },
    { 'hrsh7th/cmp-vsnip' },
    { 'hrsh7th/vim-vsnip' },
    { 'hrsh7th/cmp-nvim-lsp-signature-help' },
    { 'hrsh7th/cmp-nvim-lsp-document-symbol' },
    {
        'samiulsami/cmp-go-deep',
        dependencies = { 'kkharji/sqlite.lua' }
    },

    { 'lewis6991/gitsigns.nvim' },

    { "williamboman/mason.nvim" },

    {
        'nvim-telescope/telescope.nvim',
        dependencies = { 'nvim-lua/plenary.nvim' }
    },

    {
        "akinsho/bufferline.nvim",
        dependencies = { 'nvim-tree/nvim-web-devicons' }
    },

    { 'terrortylor/nvim-comment' },

    { "folke/which-key.nvim" },

    {
        "folke/flash.nvim",
        event = "VeryLazy",
        opts = {},
        keys = {
            { "s", mode = { "n", "x", "o" }, function() require("flash").jump() end, desc = "Flash" },
        },
    },

    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons', 'linrongbin16/lsp-progress.nvim' }
    },

    { 'petertriho/nvim-scrollbar' },

    { 'RRethy/vim-illuminate' },

    { "ray-x/lsp_signature.nvim" },

    {
        "mfussenegger/nvim-dap",
    },

    {
        "rcarriga/nvim-dap-ui",
        dependencies = { "mfussenegger/nvim-dap", "nvim-neotest/nvim-nio" }
    },

    { "sindrets/diffview.nvim" },

    { 'brenoprata10/nvim-highlight-colors' },

    { "romus204/nvim-float-definition" },

    { "hedyhli/outline.nvim" },

    {
        'MeanderingProgrammer/render-markdown.nvim',
        dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-tree/nvim-web-devicons' },
    },
    {
        "folke/todo-comments.nvim",
        dependencies = { "nvim-lua/plenary.nvim" },
    },

    {
        "rcarriga/nvim-notify",
    },
    {
        "LintaoAmons/bookmarks.nvim",
        dependencies = { "kkharji/sqlite.lua", "nvim-telescope/telescope.nvim", "stevearc/dressing.nvim" },
    },
    {
        'windwp/nvim-autopairs',
        event = "InsertEnter",
        config = true
    },
    {
        "romus204/nvim-dbee",
        branch = "feature/edit_clickhouse_driver",
        dependencies = {
            "MunifTanjim/nui.nvim",
            {
                "MattiasMTS/cmp-dbee",
                ft = "sql", -- optional but good to have
                opts = {},  -- needed
            }
        },
        build = function()
            -- Install tries to automatically detect the install method.
            -- if it fails, try calling it with one of these parameters:
            --    "curl", "wget", "bitsadmin", "go"
            require("dbee").install()
        end,
    },

    {
        "maxandron/goplements.nvim",
        ft = "go",
        opts = {
        },
    },
    {
        "romus204/go-tagger.nvim",
        ft = "go",
        opts = {
        },
    },

    {
        "kdheepak/lazygit.nvim",
        dependencies = {
            "nvim-lua/plenary.nvim",
        },
    },

})
