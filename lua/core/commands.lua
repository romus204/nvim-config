vim.api.nvim_create_user_command('GitPull', function()
    vim.fn.system('git pull')
    vim.cmd('bufdo e') -- Refresh all buffers
end, {})
