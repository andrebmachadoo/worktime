-- ~/.config/nvim/lua/myplugin/utils.lua

local M = {}

function M.createDirectory(path)
    -- Check OS
    local isWindows = package.config:sub(1, 1) == '\\'

    -- Set the command according to the operating system
    local command
    if isWindows then
        command = 'mkdir "' .. path .. '"'
    else
        command = 'mkdir -p "' .. path .. '"'
    end

    -- local result = os.execute(command)
    -- Exec command and grab output
    local handle = io.popen(command)
    local result = handle:read("*a")
    local success, exit_code, signal = handle:close()

    -- check result
    if success then
        return true, "Directory created: " .. path
    else
        return false, "Failed to create directory: " .. result
    end 
end

return M

