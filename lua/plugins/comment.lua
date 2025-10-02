-- ~/.config/nvim/lua/plugins/comment.lua
return {
  "numToStr/Comment.nvim",
  config = function()
    require("Comment").setup({
      -- Add any configuration you want here
      toggler = {
        line = "<leader>/", -- default: Space + /
        block = "<leader>gb",
      },
      opleader = {
        line = "<leader>/",
        block = "<leader>gb",
      },
    })
  end,
}
