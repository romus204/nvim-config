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
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons",
            "MunifTanjim/nui.nvim",
        }
    },

    { 'nvim-treesitter/nvim-treesitter' },

    { "rebelot/kanagawa.nvim" },

    { "neovim/nvim-lspconfig" },

    { 'hrsh7th/cmp-nvim-lsp' },
    { 'hrsh7th/cmp-buffer' },
    { 'hrsh7th/cmp-path' },
    { 'hrsh7th/cmp-cmdline' },
    { 'hrsh7th/nvim-cmp' },
    { 'hrsh7th/cmp-vsnip' },
    { 'hrsh7th/vim-vsnip' },
    { 'hrsh7th/cmp-nvim-lsp-signature-help' },
    { 'hrsh7th/cmp-nvim-lsp-document-symbol' },
    { 'lukas-reineke/cmp-rg' },

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

    {
        'windwp/nvim-autopairs',
        event = "InsertEnter",
        config = true
    },

    { 'terrortylor/nvim-comment' },

    {
        'glepnir/dashboard-nvim',
        event = 'VimEnter',
        dependencies = { { 'nvim-tree/nvim-web-devicons' } }
    },

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
        dependencies = { 'nvim-tree/nvim-web-devicons',
            'linrongbin16/lsp-progress.nvim' }
    },

    { 'petertriho/nvim-scrollbar' },

    { 'RRethy/vim-illuminate' },

    { "ray-x/lsp_signature.nvim" },

    {
        "mfussenegger/nvim-dap",
        commit = "a6070b4e9e9a8ff1bc513c3748eff27080b0f44a"
    },

    {
        "rcarriga/nvim-dap-ui",
        dependencies = { "mfussenegger/nvim-dap", "nvim-neotest/nvim-nio" }
    },

    { "theHamsta/nvim-dap-virtual-text" },

    { "sindrets/diffview.nvim" },

    { 'brenoprata10/nvim-highlight-colors' },

    { "romus204/nvim-float-definition" },

})
