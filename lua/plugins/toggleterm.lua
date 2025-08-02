return {
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    config = function()
      require("toggleterm").setup({
        size = 20,
        open_mapping = [[<c-\>]], -- Default key to toggle
        shade_terminals = true,
        shading_factor = 1,
        direction = "float", -- default terminal is floating
        float_opts = {
          border = "curved",
        },
      })
    end,
  },
}
