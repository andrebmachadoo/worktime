local M = {}
local utils = require('worktime.utils')
local config = require('worktime.config')

function recordTime (type, text)

  local full_path = config.path .. "/" .. config.dirname

  local io = require("io")
  local date = os.date("%Y%m%d")
  local time = os.date("%H:%M:%S")

  utils.createDirectory(full_path)

  local filePath = full_path .."/".. os.date("%Y%m%d") .. ".csv"
  local contentfile = date .. ";" .. time .. ";" .. type .. ";" .. text .. "\n"
  
  local file = io.open(filePath, "a+")
  if file then
    file:write(contentfile)
    file:flush()
    file:close()
    print("Data registered successfully!")
  else
    print("Error opening"..filePath)
  end

  return 
end 

M.setup = function()
  vim.api.nvim_create_user_command('WTime', function(opts)
      local args = vim.split(opts.args, " ", true)
      
      -- Check if set two arguments
      if #args < 2 then
          print('Error, Example -->: (Worktime "s" "Starting task x" ) or (Worktime "p" "Pausing task x") ')
          return
      end
  
      -- Capture args
      local arg1 = args[1]
      local arg2 = table.concat(args, " ", 2)
  
      recordTime(arg1, arg2)
  end, {
      nargs = "*",  -- any args
      complete = function(ArgLead, CmdLine, CursorPos)
          return {"s", "p"}  
      end
  })
end

return M

