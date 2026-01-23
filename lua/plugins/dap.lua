local dap = require("dap")

require("dap").set_log_level("DEBUG")

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
                args = { "dap", "-l", "127.0.0.1:${port}", "--check-go-version=false", "--log", "--log-output=dap" },
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
        outputMode = "remote",
    }
}
