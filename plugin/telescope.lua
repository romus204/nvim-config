vim.pack.add({
    "https://github.com/nvim-lua/plenary.nvim",

    "https://github.com/nvim-telescope/telescope.nvim",
})

require('telescope').setup({

    defaults = {
        layout_strategy = 'vertical',
        bottom_pane = {
            height = 25,
            preview_cutoff = 120,
            prompt_position = "top"
        },
        center = {
            height = 0.4,
            preview_cutoff = 40,
            prompt_position = "top",
            width = 0.5
        },
        cursor = {
            height = 0.9,
            preview_cutoff = 40,
            width = 0.8
        },
        horizontal = {
            height = 0.9,
            preview_cutoff = 120,
            prompt_position = "bottom",
            width = 0.8
        },
        vertical = {
            height = 0.9,
            preview_cutoff = 120,
            prompt_position = "bottom",
            width = 0.9,
            results_width = 0.9,
        },
        path_display = { "smart" },
        dynamic_preview_title = true,
    }
})

vim.keymap.set('n', '<leader>ff', require('telescope.builtin').find_files, { desc = 'Find files' })
vim.keymap.set('n', '<leader>fw', require('telescope.builtin').live_grep, { desc = 'Find words' })
vim.keymap.set('n', '<leader>fb', require('telescope.builtin').buffers, { desc = 'Opened buffers' })
vim.keymap.set('n', '<leader>fh', require('telescope.builtin').help_tags, { desc = 'Help' })
vim.keymap.set('n', '<leader>fc', require('telescope.builtin').grep_string, { desc = 'Find current' })
vim.keymap.set('n', '<leader>fr', '<cmd>Telescope resume<cr>', { desc = 'Resume' })

vim.keymap.set('n', '<leader>gb', require('telescope.builtin').git_branches, { desc = 'Branches' })
vim.keymap.set('n', '<leader>gc', require('telescope.builtin').git_commits, { desc = 'Commits' })

vim.keymap.set('n', '<Leader>le',
    "<cmd>lua require('telescope.builtin').diagnostics({ severity = vim.diagnostic.severity.ERROR })<CR>",
    { noremap = true, silent = true, desc = 'Diagnostic ERROR' })

vim.keymap.set("n", "<Leader>lw", require('telescope.builtin').lsp_dynamic_workspace_symbols,
    { noremap = true, silent = true, desc = "Find in project" })
vim.keymap.set('n', '<leader>lu', require('telescope.builtin').lsp_document_symbols,
    { desc = 'Document symbols' })
vim.keymap.set('n', '<Leader>lr', require('telescope.builtin').lsp_references,
    { noremap = true, silent = true, desc = 'LSP references' })
vim.keymap.set('n', '<Leader>ld', require('telescope.builtin').lsp_definitions,
    { noremap = true, silent = true, desc = 'LSP definition' })
vim.keymap.set('n', '<Leader>li', require('telescope.builtin').lsp_implementations,
    { noremap = true, silent = true, desc = 'LSP implementation' })
