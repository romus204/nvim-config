vim.pack.add({
    "https://github.com/mfussenegger/nvim-dap",
})

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

function Parse_env_file(filepath) -- Parse env file to table
    if filepath == nil then
        return {}
    end

    local env_vars = {}

    local file, err = io.open(filepath, "r")
    if not file then
        print("Error: ", err)
        return env_vars
    end

    for line in file:lines() do
        -- delete spaces
        line = line:match("^%s*(.-)%s*$")

        -- skip empty lines and comments
        if line ~= "" and not line:match("^#") then
            local key, value = line:match("^([%w_]+)%s*=%s*(.-)%s*$")
            if key and value then
                env_vars[key] = value
            else
                print("Not valid format: " .. line)
            end
        end
    end

    file:close()

    return env_vars
end


-- Example
--
-- pcall(vim.cmd.packadd, "nvim-dap")
--
-- require("dap").configurations.go = {
--     {
--         type = "delve",
--         name = "Main",
--         request = "launch",
--         program = main file,
--         outputMode = "remote",
--     }
-- }
