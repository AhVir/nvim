-- ~/.config/nvim/lua/plugins/theme.lua
return {
  "ishan9299/nvim-solarized-lua",
  config = function()
    -- enable true color support (if not already)
    vim.o.termguicolors = true

    -- use light bg
    vim.o.background = "light"

    -- set the colorscheme
    vim.cmd("colorscheme solarized")

    -- optional tweaks for readability
    vim.g.solarized_visibility = "high"
    vim.g.solarized_contrast = "medium"

    -- subtle difference between editor and terminal bg
    -- Normal: main editor background
    vim.cmd("hi Normal guibg=#fdf6e3 ctermbg=NONE")
    -- NormalNC: inactive windows
    vim.cmd("hi NormalNC guibg=#fef9f3 ctermbg=NONE")
    -- Float windows: LSP, terminal floats, etc.
    vim.cmd("hi NormalFloat guibg=#fdf8f0 ctermbg=NONE")
  end,
}
