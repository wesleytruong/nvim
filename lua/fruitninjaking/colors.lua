-- Load lazy.nvim
local lazy = require("lazy")

-- Function to load plugins from a directory

function LoadColors()
  local files = vim.fn.glob("~/.config/nvim/lua/fruitninjaking/lazy/colors/*.lua")
  -- print(files)
  for file in files:gmatch("[^\n]+") do
    -- print(file)
    local pluginName = file:match(".*/(.*).lua")
    print(pluginName)
    if pluginName then
      lazy.load(pluginName, 'colorscheming', {})
      -- require('fruitninjaking.lazy.colors.' .. pluginName).setup()
    end
  end
end
