vim.pack.add({
    "https://github.com/ray-x/lsp_signature.nvim",
})

require("lsp_signature").setup({})

vim.keymap.set('i', '<C-s>', function()
    require('lsp_signature').toggle_float_win()
end, { silent = true, noremap = true, desc = 'toggle signature' })

