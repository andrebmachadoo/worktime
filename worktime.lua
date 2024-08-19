return {
  "andrebmachadoo/worktime",
  lazy = false, -- Carrega o plugin imediatamente
  config = function()
    local status, err = pcall(function()
      local wtime = require("worktime.init")
      wtime.setup()
    end)
    if not status then
      vim.notify("Erro ao configurar 'worktime': " .. err, vim.log.levels.ERROR)
    end
  end
}
