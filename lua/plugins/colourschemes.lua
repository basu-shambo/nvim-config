local kanagawa = {
  "rebelot/kanagawa.nvim",
  priority = 1000,
  config = function()
    require("kanagawa").setup({ compile = true })
    vim.cmd.colorscheme "kanagawa"
  end,
}

local catppuccin = {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  config = function()
    vim.cmd.colorscheme "catppuccin"
  end,
}

-- Select your theme below
return kanagawa
-- return catppuccin
