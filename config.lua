local M = {}

local defaults = {
  dirname = ".worktime",
  path = vim.fn.getcwd(),
}

M.settings = {}

function M.setup(user_config)
  M.settings = vim.tbl_deep_extend('force', {}, defaults, user_config or {})
end

return M
