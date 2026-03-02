-- Colour theme --
return {
  "folke/tokyonight.nvim",
  lazy = false,
  priority = 1000,
  opts = {},
  -- config is required so that vim.cmd can
  -- be called to activate installed colourscheme
  config = function()
    require("tokyonight").setup(opts)
    vim.cmd([[colorscheme tokyonight-moon]])
  end
}
