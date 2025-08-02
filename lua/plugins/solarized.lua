-- ~/.config/nvim/lua/plugins/theme.lua
return {
  {
    "folke/tokyonight.nvim", -- Theme plugin
    lazy = false, -- Load at startup
    priority = 1000, -- Load before other plugins
    config = function()
      vim.o.background = "light" -- "dark" if you want dark mode
      vim.cmd.colorscheme("tokyonight-day") -- Light variant
    end,
  },
}
