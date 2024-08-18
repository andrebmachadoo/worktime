local M = {}

-- load modules 
local config = require('worktime.config')
local commands = require('worktime.commands')

function M.setup(user_config)
  config.setup(user_config)
  
  commands.setup()
end

return M

