return {
  "rebelot/kanagawa.nvim",
  name = "kanagawa",
  lazy = true,
  config = function()
    vim.cmd("highlight SignColumn guibg=NONE")
  end,
}
