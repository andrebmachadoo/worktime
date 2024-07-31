local M = {}

-- load modules 
local config = require('plugins.worktime.config')
local commands = require('plugins.worktime.commands')

function M.setup(user_config)
  config.setup(user_config)
  
  commands.setup()
end

return M

