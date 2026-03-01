local spec = {
  "WhoIsSethDaniel/mason-tool-installer.nvim",
  opts = {},
}

return function(mason_tools) -- NOTE: mason_tools defined in ./init.lua
  spec.opts.ensure_installed = mason_tools
  return spec
end
