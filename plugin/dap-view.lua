vim.pack.add({
    "https://github.com/mfussenegger/nvim-dap",

    "https://github.com/igorlfs/nvim-dap-view",
})

require("dap-view").setup({
    winbar = {
        sections = { "scopes", "breakpoints", "threads", "repl" },
        default_section = "repl",
    },
    switchbuf = "uselast",
    auto_toggle = true,
})

vim.keymap.set("n", "<Leader>dt",
    '<Cmd>DapViewToggle<CR>',
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

