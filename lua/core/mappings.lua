vim.g.mapleader = " "

-- Disable arrows
vim.keymap.set('n', '<Up>', '<Nop>', { noremap = true, silent = true })
vim.keymap.set('n', '<Down>', '<Nop>', { noremap = true, silent = true })
vim.keymap.set('n', '<Left>', '<Nop>', { noremap = true, silent = true })
vim.keymap.set('n', '<Right>', '<Nop>', { noremap = true, silent = true })

-- Disable arrows
vim.keymap.set('i', '<Up>', '<Nop>', { noremap = true, silent = true })
vim.keymap.set('i', '<Down>', '<Nop>', { noremap = true, silent = true })
vim.keymap.set('i', '<Left>', '<Nop>', { noremap = true, silent = true })
vim.keymap.set('i', '<Right>', '<Nop>', { noremap = true, silent = true })

-- Disable arrows
vim.keymap.set('x', '<Up>', '<Nop>', { noremap = true, silent = true })
vim.keymap.set('x', '<Down>', '<Nop>', { noremap = true, silent = true })
vim.keymap.set('x', '<Left>', '<Nop>', { noremap = true, silent = true })
vim.keymap.set('x', '<Right>', '<Nop>', { noremap = true, silent = true })

vim.keymap.set("n", "<Esc>", ":noh<CR>", { noremap = true, silent = true })          -- reset highlight
vim.keymap.set("i", "jj", "<Esc>")                                                   -- more comfortable esc
vim.keymap.set("i", "kk", "<Esc>")                                                   -- more comfortable esc
vim.keymap.set("n", "<leader>ww", ":w<CR>", { silent = true, desc = "Save file" })   -- all save
vim.keymap.set("n", "<leader>wa", ":wall<CR>", { silent = true, desc = "Save all" }) -- all save

vim.keymap.set('n', '<C-h>', '<C-w>h', { noremap = true, silent = true })
vim.keymap.set('n', '<C-j>', '<C-w>j', { noremap = true, silent = true })
vim.keymap.set('n', '<C-k>', '<C-w>k', { noremap = true, silent = true })
vim.keymap.set('n', '<C-l>', '<C-w>l', { noremap = true, silent = true })

-- NeoTree
vim.keymap.set("n", "<leader>E", ":Neotree float reveal<CR>")
vim.keymap.set("n", "<leader>e", ":lua ToggleNeotree()<CR>")

-- Tabs
vim.keymap.set("n", "<Tab>", ":BufferLineCycleNext<CR>")
vim.keymap.set("n", "<s-Tab>", ":BufferLineCyclePrev<CR>")

-- DAP (Debugging)
vim.keymap.set("n", "<Leader>dv",
    '<Cmd>lua require("dapui").float_element("scopes", { width = 250, height = 50, enter = true, position = "center"})<CR>',
    { noremap = true, silent = true, desc = "Variables" })

vim.keymap.set("n", "<Leader>dbv",
    '<Cmd>lua require("dapui").float_element("breakpoints", { width = 250, height = 50, enter = true, position = "center"})<CR>',
    { noremap = true, silent = true, desc = "Breakpoints" })

vim.keymap.set("n", "<Leader>ds",
    '<Cmd>lua require("dapui").float_element("stacks", { width = 250, height = 50, enter = true, position = "center"})<CR>',
    { noremap = true, silent = true, desc = "Stack" })
vim.keymap.set("n", "<Leader>dr", function()
    require("dapui").float_element("repl", { width = 250, height = 50, enter = true, position = "center" })
    vim.defer_fn(function()
        Set_wrap_in_repl()
    end, 500) --delay 500ms
end
, { noremap = true, silent = true, desc = "REPL" })

vim.keymap.set("n", "<Leader>do",
    '<Cmd>lua require("dapui").toggle()<CR>',
    { noremap = true, silent = true, desc = "Toggle variables" })

vim.keymap.set("n", "<Leader>dt",
    '<Cmd>lua DAPUITypesToggle()<CR>',
    { noremap = true, silent = true, desc = "Variables" })


vim.keymap.set("n", "<F5>", '<Cmd>lua require"dap".continue()<CR>', { noremap = true, silent = true })
vim.keymap.set("n", "<F8>", '<Cmd>lua require"dap".step_over()<CR>', { noremap = true, silent = true })
vim.keymap.set("n", "<F9>", '<Cmd>lua require"dap".step_into()<CR>', { noremap = true, silent = true })
vim.keymap.set("n", "<F7>", '<Cmd>lua require"dap".step_out()<CR>', { noremap = true, silent = true })
vim.keymap.set("n",
    "<Leader>dbt",
    '<Cmd>lua require("dap").toggle_breakpoint()<CR>',
    { noremap = true, silent = true, desc = "Toggle breakpoint" }
)

-- Telescope
vim.keymap.set('n', '<leader>ff', require('telescope.builtin').find_files, { desc = 'Find files' })
vim.keymap.set('n', '<leader>fw', require('telescope.builtin').live_grep, { desc = 'Find words' })
vim.keymap.set('n', '<leader>fb', require('telescope.builtin').buffers, { desc = 'Opened buffers' })
vim.keymap.set('n', '<leader>fh', require('telescope.builtin').help_tags, { desc = 'Help' })
vim.keymap.set('n', '<leader>fc', require('telescope.builtin').grep_string, { desc = 'Find current' })


-- LSP
vim.keymap.set("n", "<Leader>la", '<Cmd>lua vim.lsp.buf.code_action()<CR>',
    { noremap = true, silent = true, desc = "Actions" })
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
vim.keymap.set("n", "<leader>ls", "<cmd>lua vim.lsp.buf.hover()<CR>",
    { noremap = true, silent = true, desc = "Signature" })
-- vim.keymap.set("n", "<Leader>lp", '<Cmd>!pg_format -iLT %<CR>',
--     { noremap = true, silent = true, desc = "Format PG SQL" })
vim.keymap.set("n", "<leader>lf", '<cmd>lua vim.diagnostic.open_float(0, {scope="line"})<CR>',
    { noremap = true, silent = true, desc = "Full diagnostic msg" })
vim.keymap.set("n", "<leader>lc", '<cmd>lua vim.lsp.buf.rename()<CR>',
    { noremap = true, silent = true, desc = "Rename" })
vim.keymap.set("n", "<leader>lm", "<cmd>lua require('nvim-float-definition').open_definition_in_float()<CR>",
    { noremap = true, silent = true, desc = "Float definition" })
vim.keymap.set('n', '<Leader>le',
    "<cmd>lua require('telescope.builtin').diagnostics({ severity = vim.diagnostic.severity.ERROR })<CR>",
    { noremap = true, silent = true, desc = 'Diagnostic ERROR' })
vim.keymap.set("n", "<leader>lp", "<cmd>lua vim.lsp.buf.format({ async = false })<CR>",
    { noremap = true, silent = true, desc = "Format code" })



-- Comment
vim.keymap.set('n', '<leader>/', ':CommentToggle<CR>', { noremap = true, silent = true })
vim.keymap.set('v', '<leader>/', ':CommentToggle<CR>', { noremap = true, silent = true })


-- git
vim.keymap.set('n', '<leader>gb', require('telescope.builtin').git_branches, { desc = 'Branches' })
vim.keymap.set('n', '<leader>gc', require('telescope.builtin').git_commits, { desc = 'Commits' })
vim.keymap.set("n", "<leader>gs", ":Neotree float git_status<CR>")
vim.keymap.set('n', '<leader>go', '<Cmd>Gitsigns blame<CR>', { desc = 'Blame' })
vim.keymap.set('n', '<leader>gn', '<Cmd>Gitsigns next_hunk<CR>', { desc = 'Next hunk' })
vim.keymap.set('n', '<leader>gp', '<Cmd>Gitsigns prev_hunk<CR>', { desc = 'Prev hunk' })
vim.keymap.set('n', '<leader>gh', '<Cmd>Gitsigns preview_hunk_inline<CR>', { desc = 'Preview hunk' })
vim.keymap.set('n', '<leader>gdc', '<Cmd>DiffviewOpen<CR>', { desc = 'Diff current' })
vim.keymap.set('n', '<leader>gdp', '<Cmd>DiffviewOpen HEAD~1..HEAD<CR>', { desc = 'Diff 1 pev commit' })
vim.keymap.set('n', '<leader>gl', '<Cmd>LazyGit<CR>', { desc = 'LazyGit' })


-- Closer
vim.keymap.set('n', '<leader>qt', '<Cmd>tabclose<CR>', { desc = "Close tab" })
vim.keymap.set('n', '<leader>qo', '<Cmd>BufferLineCloseOthers<CR>', { desc = "Close other buffers" })
vim.keymap.set('n', '<leader>qw', ':q<CR>', { desc = "Close current window" })
vim.keymap.set("n", "<leader>qb", ":BufferLinePickClose<CR>")

-- Outline
vim.keymap.set("n", "<leader>o", "<cmd>Outline<CR>", { desc = "Toggle Outline" })

-- Lsp_signature
vim.keymap.set('i', '<C-s>', function()
    require('lsp_signature').toggle_float_win()
end, { silent = true, noremap = true, desc = 'toggle signature' })

-- Bookmarks
vim.keymap.set('n', '<leader>mt', '<Cmd>BookmarksTree<CR>', { desc = "Bookmarks tree" })
vim.keymap.set('n', '<leader>mm', '<Cmd>BookmarksMark<CR>', { desc = "Bookmarks mark" })
