return {
  "folke/tokyonight.nvim",
  name = "tokyonight",
  lazy = true,
  config = function()
    require("tokyonight").setup({
      style = "moon",
    })
  end
}
