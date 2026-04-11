vim.pack.add({
    "https://github.com/rcarriga/nvim-notify",
})

require("notify").setup({
    stages = "slide", -- Анимация появления
    fps = 60,
    level = 0,
})

vim.notify = require("notify")

