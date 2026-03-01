--[[
   INFO:
    This file is called by ../config/lazy.lua .
    It is passed to lazy.setup.spec and so must return a table of
    lazy.nvim plugin specs.
    Each spec is defined in its own file and imported by this file.
--]]
LANG_TOOLS = {
  lua = { mason = { "lua-language-server", "stylua" } },
  vim = { mason = "vim-language-server", "vint" },
  vimdoc = { mason = "none" },
  nix = { mason = { "alejandra", "nil" } },
  markdown = { mason = "none" },
  python = { mason = { "debugpy", "mypy", "ruff", "sphinx-lint" } },
  c = { mason = { "clang-format", "cpplint", "clangd", "codelldb" } },
  make = { mason = {} },
  bash = { mason = {} },
  zsh = { mason = {} },
  fish = { mason = {} },
  git = {
    ts = {
      "git_config",
      "git_rebase",
      "gitattributes",
      "gitcommit",
    },
    mason = {},
  },
  javascript = { mason = {} },
  json = { mason = {} },
}

GET_TOOLS = function(tool_type)
  local m = {}
  for lang, _ in pairs(LANG_TOOLS) do
    local tool = LANG_TOOLS[lang][tool_type]
    if tool ~= nil then
      m[lang] = LANG_TOOLS[lang][tool_type]
    elseif tool == "none" then
      -- deliberately do nothing
    else
      m[lang] = lang
    end
  end
  return m
end

TS_PARSERS = GET_TOOLS("ts")
MASON_TOOLS = GET_TOOLS("mason")

return {
  -- TokyoNight colourscheme
  require("plugins.tokyonight"),
  -- Nvim-TreeSitter code highlights
  require("plugins.treesitter")(TS_PARSERS),
  -- Mason.nvim & mason-tool-install LSP package management
  require("plugins.mason"),
  require("plugins.mason-tool-install")(MASON_TOOLS),
}
