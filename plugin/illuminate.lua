vim.pack.add({
    "https://github.com/RRethy/vim-illuminate",
})

require('illuminate').configure({
})

vim.cmd([[
    highlight IlluminatedWordText guibg=#505050
    highlight IlluminatedWordRead guibg=#505050
    highlight IlluminatedWordWrite guibg=#505050
]])
