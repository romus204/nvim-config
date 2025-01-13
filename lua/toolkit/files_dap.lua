local function file_exists(path)
    local file = io.open(path, "r")
    if file then
        file:close()
        return true
    end
    return false
end

function Find_main_go_file()
    local cwd = vim.fn.getcwd()
    local paths = {
        cwd .. "/src/main.go",
        cwd .. "/cmd/main.go",
        cwd .. "/main.go"
    }

    for _, path in ipairs(paths) do
        if file_exists(path) then
            return path
        end
    end
end

function Get_tmp_bin_name()
    return '/tmp/__debug_bin_' .. Generate_uuid_v4()
end

function Find_env_file()
    local cwd = vim.fn.getcwd()
    local paths = {
        cwd .. "/.env",
    }

    for _, path in ipairs(paths) do
        if file_exists(path) then
            return path
        end
    end
end

function Find_config_file()
    local cwd = vim.fn.getcwd()
    local paths = {
        cwd .. "/config.yml",
        cwd .. "/config.yaml",
        cwd .. "/config/application.yaml",
        cwd .. "/config/application.yml",
    }

    for _, path in ipairs(paths) do
        if file_exists(path) then
            return path
        end
    end

    return nil
end
