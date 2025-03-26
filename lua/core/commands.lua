local start_time = vim.loop.hrtime()

vim.api.nvim_create_autocmd("VimEnter", {
    callback = function()
        local elapsed_time = (vim.loop.hrtime() - start_time) / 1e6 -- в миллисекундах
        vim.notify(string.format("Neovim startup time %.2f ms", elapsed_time), "info", { title = "Startup time" })
    end
})

vim.api.nvim_create_autocmd("VimEnter", {
    callback = function()
        require("neo-tree.command").execute({ position = "left", toggle = true })
    end
})
