return {
  "rebelot/kanagawa.nvim",
  name = "kanagawa",
  lazy = true,
  config = function()
    require("kanagawa").setup({
      colors = {
        theme = {
          all = {
            ui = {
              bg_gutter = "none"
            }
          }
        }
      }
    })
  end
}
