-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--

vim.keymap.set("n", "<leader>ct", function()
  local current_theme = vim.g.colors_name or "PaperColor"

  if current_theme == "PaperColor" then
    vim.cmd("colorscheme solarized")
  else
    vim.cmd("colorscheme PaperColor")
  end
end, { noremap = true, silent = true })

-- Comment toggle with <leader>/
vim.keymap.set("n", "<leader>/", function()
  require("Comment.api").toggle.linewise.current()
end, { desc = "Toggle comment line" })

vim.keymap.set("v", "<leader>/", function()
  -- In visual mode, toggle comment for selection
  require("Comment.api").toggle.linewise(vim.fn.visualmode())
end, { desc = "Toggle comment selection" })
