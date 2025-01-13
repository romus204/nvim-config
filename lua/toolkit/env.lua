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
