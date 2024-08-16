local M = {}

-- load modules 
local config = require('config')
local commands = require('commands')

print(config)
print(commands)

function M.setup(user_config)
  config.setup(user_config)
  
  commands.setup()
end

return M

