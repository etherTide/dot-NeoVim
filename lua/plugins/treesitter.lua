return function(ts_parsers) -- NOTE: ts_parsers defined in ./init.lua
  return {
    "nvim-treesitter/nvim-treesitter",
    lazy = false,
    build = ":TSUpdate",
    opts = { ensure_installed = ts_parsers },
  }
end
