-- lua/plugins/papercolor.lua
return {
  "NLKNguyen/papercolor-theme", -- Vimscript-based colorscheme
  config = function()
    -- enable true color
    vim.o.termguicolors = true

    -- set PaperColor light variant
    vim.g.papercolor_italic = 0 -- optional: disable italics
    vim.g.papercolor_termcolors = 256
    vim.g.papercolor_background = "light"

    -- apply the colorscheme (Vimscript)
    vim.cmd("colorscheme PaperColor")

    -- subtle difference for inactive windows and floating windows
    vim.cmd("hi Normal guibg=#ffffff ctermbg=NONE") -- main editor
    vim.cmd("hi NormalNC guibg=#f7f7f7 ctermbg=NONE") -- inactive splits
    vim.cmd("hi NormalFloat guibg=#f9f9f9 ctermbg=NONE") -- floating windows

    -- blue accents for code
    vim.cmd("hi Keyword guifg=#0000ff")
    vim.cmd("hi Type guifg=#0000ff")
    vim.cmd("hi Function guifg=#0066cc")
    vim.cmd("hi Identifier guifg=#0000cc")
    vim.cmd("hi Comment guifg=#888888") -- muted grey comments
  end,
}
