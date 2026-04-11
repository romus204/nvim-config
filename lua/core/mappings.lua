vim.g.mapleader = " "

-- Disable arrows
vim.keymap.set('n', '<Up>', '<Nop>', { noremap = true, silent = true })
vim.keymap.set('n', '<Down>', '<Nop>', { noremap = true, silent = true })
vim.keymap.set('n', '<Left>', '<Nop>', { noremap = true, silent = true })
vim.keymap.set('n', '<Right>', '<Nop>', { noremap = true, silent = true })
vim.keymap.set('i', '<Up>', '<Nop>', { noremap = true, silent = true })
vim.keymap.set('i', '<Down>', '<Nop>', { noremap = true, silent = true })
vim.keymap.set('i', '<Left>', '<Nop>', { noremap = true, silent = true })
vim.keymap.set('i', '<Right>', '<Nop>', { noremap = true, silent = true })
vim.keymap.set('x', '<Up>', '<Nop>', { noremap = true, silent = true })
vim.keymap.set('x', '<Down>', '<Nop>', { noremap = true, silent = true })
vim.keymap.set('x', '<Left>', '<Nop>', { noremap = true, silent = true })
vim.keymap.set('x', '<Right>', '<Nop>', { noremap = true, silent = true })

vim.keymap.set("n", "<Esc>", ":noh<CR>", { noremap = true, silent = true })
vim.keymap.set("i", "jj", "<Esc>")
vim.keymap.set("i", "kk", "<Esc>")
vim.keymap.set("n", "<leader>ww", ":w<CR>", { silent = true, desc = "Save file" })
vim.keymap.set("n", "<leader>wa", ":wall<CR>", { silent = true, desc = "Save all" })

vim.keymap.set('n', '<C-h>', '<C-w>h', { noremap = true, silent = true })
vim.keymap.set('n', '<C-j>', '<C-w>j', { noremap = true, silent = true })
vim.keymap.set('n', '<C-k>', '<C-w>k', { noremap = true, silent = true })
vim.keymap.set('n', '<C-l>', '<C-w>l', { noremap = true, silent = true })

vim.keymap.set('n', '<C-M-h>', '<C-w>>', { noremap = true, silent = true })
vim.keymap.set('n', '<C-M-j>', '<C-w>-', { noremap = true, silent = true })
vim.keymap.set('n', '<C-M-k>', '<C-w>+', { noremap = true, silent = true })
vim.keymap.set('n', '<C-M-l>', '<C-w><', { noremap = true, silent = true })


-- LSP
vim.keymap.set("n", "<Leader>la", '<Cmd>lua vim.lsp.buf.code_action()<CR>',
    { noremap = true, silent = true, desc = "Actions" })
vim.keymap.set("n", "<leader>ls", "<cmd>lua vim.lsp.buf.hover()<CR>",
    { noremap = true, silent = true, desc = "Signature" })
vim.keymap.set("n", "<leader>lf", '<cmd>lua vim.diagnostic.open_float(0, {scope="line"})<CR>',
    { noremap = true, silent = true, desc = "Full diagnostic msg" })
vim.keymap.set("n", "<leader>lc", '<cmd>lua vim.lsp.buf.rename()<CR>',
    { noremap = true, silent = true, desc = "Rename" })
vim.keymap.set("n", "<leader>lp", "<cmd>lua vim.lsp.buf.format({ async = false })<CR>",
    { noremap = true, silent = true, desc = "Format code" })

-- Close
vim.keymap.set('n', '<leader>qt', '<Cmd>tabclose<CR>', { desc = "Close tab" })
vim.keymap.set('n', '<leader>qw', ':q<CR>', { desc = "Close current window" })
