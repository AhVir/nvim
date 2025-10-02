-- ~/.config/nvim/lua/plugins/github-theme.lua
return {
  "projekt0n/github-nvim-theme",
  name = "github-theme",
  lazy = false, -- load during startup
  priority = 1000, -- load before all other plugins
  config = function()
    require("github-theme").setup({
      options = {
        transparent = false,
        styles = {
          comments = "italic",
          keywords = "bold",
          functions = "italic,bold",
        },
      },
    })

    -- set your theme
    vim.cmd("colorscheme github_light_tritanopia")
  end,
}
