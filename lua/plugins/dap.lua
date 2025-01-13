require("nvim-dap-virtual-text").setup()

local dap, dapui = require("dap"), require("dapui")

dapui.setup({})

dap.adapters.delve = function(callback, config)
    if config.mode == "remote" and config.request == "attach" then
        callback({
            type = "server",
            host = config.host or "127.0.0.1",
            port = config.port or "38697",
        })
    else
        callback({
            type = "server",
            port = "${port}",
            executable = {
                command = "dlv",
                args = { "dap", "-l", "127.0.0.1:${port}", },
                detached = vim.fn.has("win32") == 0,
            },
        })
    end
end

dap.configurations.go = {
    {
        type = "delve",
        name = "Main",
        request = "launch",
        program = Find_main_go_file,
        output = Get_tmp_bin_name,
        env = function()
            return Parse_env_file(Find_env_file())
        end,
    },
    {
        type = "delve",
        name = "Attach localhost:38697",
        request = "attach",
        output = Get_tmp_bin_name,
    },
}

function Set_wrap_in_repl()
    for _, win in ipairs(vim.api.nvim_list_wins()) do
        local buf = vim.api.nvim_win_get_buf(win)       -- Get buffer window
        local buf_name = vim.api.nvim_buf_get_name(buf) -- Get Name file buffer

        -- print("Window ID:", win, "Buffer ID:", buf, "Buffer Name:", buf_name)
        if string.find(buf_name, '[dap-repl', 1, true) then
            -- focus on find window
            vim.api.nvim_set_current_win(win)
            vim.cmd("set wrap linebreak")
            return
        end
    end
    print("No dap-repl window found")
end

dap.listeners.before.attach.dapui_config = function()
    require("dapui").float_element("repl", { width = 250, height = 50, enter = true, position = "center" })
    vim.defer_fn(function()
        Set_wrap_in_repl()
    end, 500) -- Delay 500ms
end
dap.listeners.before.launch.dapui_config = function()
    require("dapui").float_element("repl", { width = 250, height = 50, enter = true, position = "center" })
    vim.defer_fn(function()
        Set_wrap_in_repl()
    end, 500) -- Delay 500ms
end
dap.listeners.before.event_terminated.dapui_config = function()
end
dap.listeners.before.event_exited.dapui_config = function()
end
