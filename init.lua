local M = {}

-- load modules 
local config = require('config')
local commands = require('commands')

function M.setup(user_config)
  config.setup(user_config)
  
  commands.setup()
end

return M

