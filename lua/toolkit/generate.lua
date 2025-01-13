function Generate_uuid_v4()
    math.randomseed(os.time())
    local random = math.random
    local template = 'xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx'

    local f = function(c)
        local v = (c == 'x') and random(0, 15) or random(8, 11)
        return string.format('%x', v)
    end

    return string.gsub(template, '[xy]', f)
end
