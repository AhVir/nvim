-- ~/.config/nvim/lua/config/compiler.lua
local Terminal = require("toggleterm.terminal").Terminal

vim.keymap.set("n", "<leader>tr", function()
  local file = vim.fn.expand("%:p") -- full path
  local file_noext = vim.fn.expand("%:r") -- without extension
  local ext = vim.fn.expand("%:e") -- extension

  local cmd = ""
  if ext == "c" then
    cmd = string.format("gcc '%s' -o '%s' && '%s'", file, file_noext, file_noext)
  elseif ext == "cpp" then
    cmd = string.format("g++ '%s' -std=c++17 -O2 -Wall -o '%s' && '%s'", file, file_noext, file_noext)
  elseif ext == "py" then
    cmd = string.format("python3 '%s'", file)
  else
    print("Unsupported file type: " .. ext)
    return
  end

  -- Run in a floating terminal
  local term = Terminal:new({ cmd = cmd, direction = "float", close_on_exit = false })
  term:toggle()
end, { noremap = true, silent = true })
