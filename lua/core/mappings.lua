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

vim.keymap.set("n", "<leader>q", ":wqa!<CR>")                               -- quit with save
vim.keymap.set("n", "<Esc>", ":noh<CR>", { noremap = true, silent = true }) -- reset highlight
vim.keymap.set("i", "jj", "<Esc>")                                          -- more comfortable esc
vim.keymap.set("n", "<leader>w", ":wall<CR>")                               -- all save

-- NeoTree
vim.keymap.set("n", "<leader>E", ":Neotree float reveal<CR>")
vim.keymap.set("n", "<leader>e", ":lua ToggleNeotree()<CR>")
vim.keymap.set("n", "<leader>o", ":Neotree float git_status<CR>")

-- Tabs
vim.keymap.set("n", "<Tab>", ":BufferLineCycleNext<CR>")
vim.keymap.set("n", "<s-Tab>", ":BufferLineCyclePrev<CR>")
vim.keymap.set("n", "<leader>x", ":BufferLinePickClose<CR>")

-- DAP (Debugging)
vim.keymap.set("n", "<Leader>dv",
    '<Cmd>lua require("dapui").float_element("scopes", { width = 250, height = 50, enter = true, position = "center"})<CR>',
    { noremap = true, silent = true, desc = "Variables" })

vim.keymap.set("n", "<Leader>db",
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

vim.keymap.set("n", "<F5>", '<Cmd>lua require"dap".continue()<CR>', { noremap = true, silent = true })
vim.keymap.set("n", "<F10>", '<Cmd>lua require"dap".step_over()<CR>', { noremap = true, silent = true })
vim.keymap.set("n", "<F11>", '<Cmd>lua require"dap".step_into()<CR>', { noremap = true, silent = true })
vim.keymap.set("n", "<F12>", '<Cmd>lua require"dap".step_out()<CR>', { noremap = true, silent = true })
vim.keymap.set("n",
    "<Leader>b",
    '<Cmd>lua require("dap").toggle_breakpoint()<CR>',
    { noremap = true, silent = true, desc = "Toggle breakpoint" }
)

-- Telescope
vim.keymap.set('n', '<leader>ff', require('telescope.builtin').find_files, { desc = 'Find files' })
vim.keymap.set('n', '<leader>fw', require('telescope.builtin').live_grep, { desc = 'Find words' })
vim.keymap.set('n', '<leader>fb', require('telescope.builtin').buffers, { desc = 'Opened buffers' })
vim.keymap.set('n', '<leader>fh', require('telescope.builtin').help_tags, { desc = 'Help' })


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
vim.keymap.set("n", "<Leader>lp", '<Cmd>!pg_format -iLT %<CR>',
    { noremap = true, silent = true, desc = "Format PG SQL" })
vim.keymap.set("n", "<leader>lf", '<cmd>lua vim.diagnostic.open_float(0, {scope="line"})<CR>',
    { noremap = true, silent = true, desc = "Full diagnostic msg" })
vim.keymap.set("n", "<leader>lc", '<cmd>lua vim.lsp.buf.rename()<CR>',
    { noremap = true, silent = true, desc = "Rename" })
vim.keymap.set("n", "<leader>lm", "<cmd>lua require('nvim-float-definition').open_definition_in_float()<CR>",
    { noremap = true, silent = true, desc = "Float definition" })



-- Comment
vim.keymap.set('n', '<leader>/', ':CommentToggle<CR>', { noremap = true, silent = true })
vim.keymap.set('v', '<leader>/', ':CommentToggle<CR>', { noremap = true, silent = true })

-- git
vim.keymap.set('n', '<leader>gb', require('telescope.builtin').git_branches, { desc = 'Branches' })
vim.keymap.set('n', '<leader>gc', require('telescope.builtin').git_commits, { desc = 'Commits' })
vim.keymap.set('n', '<leader>gs', require('telescope.builtin').git_status, { desc = 'Status' })
vim.keymap.set('n', '<leader>go', '<Cmd>Gitsigns blame<CR>', { desc = 'Blame' })
vim.keymap.set('n', '<leader>gh', '<Cmd>Gitsigns preview_hunk_inline<CR>', { desc = 'Preview hunk' })
