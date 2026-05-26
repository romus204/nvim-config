vim.pack.add({
    "https://github.com/romus204/nvim-float-definition",
})

vim.keymap.set("n", "<leader>lm", "<cmd>lua require('nvim-float-definition').open_definition_in_float()<CR>",
    { noremap = true, silent = true, desc = "Float definition" })

