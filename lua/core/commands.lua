local start_time = vim.loop.hrtime()

-- startup time notify
vim.api.nvim_create_autocmd("VimEnter", {
    callback = function()
        local elapsed_time = (vim.loop.hrtime() - start_time) / 1e6
        vim.notify(string.format("Neovim startup time %.2f ms", elapsed_time), "info", { title = "Startup time" })
    end
})

-- auto open neo-tree
vim.api.nvim_create_autocmd("VimEnter", {
    callback = function()
        require("neo-tree.command").execute({ position = "left", toggle = true })
    end
})

-- copy current file path with number of line
vim.api.nvim_create_user_command(
    'CopyLinePath',
    function()
        local path = vim.fn.expand('%:p:h') .. '/' .. vim.fn.expand('%:t') .. ':' .. vim.fn.line('.')
        vim.fn.setreg('+', path)
        print('Copied: ' .. path)
    end,
    { desc = 'Copy file path and line number to clipboard' }
)

vim.api.nvim_create_user_command('DbeeTab', function()
    vim.cmd('tabnew')
    vim.cmd('Dbee')
end, {})
