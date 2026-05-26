vim.pack.add({
    "https://github.com/echasnovski/mini.diff",
})

require("mini.diff").setup({
    source = require("mini.diff").gen_source.none(),
})
