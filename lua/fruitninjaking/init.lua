require("fruitninjaking.remap")
require("fruitninjaking.set")

require("fruitninjaking.lazy_init")

require("fruitninjaking.colors")

-- Adds yank to clipboard support on wsl
vim.opt.clipboard = "unnamedplus"
if vim.fn.has('wsl') == 1 then
  vim.api.nvim_create_autocmd('TextYankPost', {
    group = vim.api.nvim_create_augroup('Yank', { clear = true }),
    callback = function()
      vim.fn.system('clip.exe', vim.fn.getreg('"'))
    end,
  })
end
