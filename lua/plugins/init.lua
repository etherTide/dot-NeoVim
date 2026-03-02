--[[
   INFO:
    This file is called by ../config/lazy.lua .
    It is passed to lazy.setup.spec and so must return a table of
    lazy.nvim plugin specs.
    Each spec is defined in its own file and imported by this file.
--]]
local none
LANG_TOOLS = {
  lua = { mason = { "lua-language-server", "stylua" } },
  vim = { mason = "vim-language-server", "vint" },
  vimdoc = { mason = none },
  nix = { mason = { "alejandra", "nil" } },
  -- TODO: double check I'm OK with these .md tools
  markdown = { mason = { "markdown-oxide", "cbfmt", "glow" } },
  python = { mason = { "debugpy", "mypy", "ruff", "sphinx-lint" } },
  c = { mason = { "clangd", "codelldb", "cpplint", "clang-format" } },
  make = { mason = "checkmake" },
  bash = { mason = { "bash-language-server", "shellharden" } },
  zsh = {
    mason = "beautysh" --[[ and "bash-language-server" (in bash tools) ]],
  },
  fish = { mason = "fish-lsp" },
  git = {
    ts = {
      "git_config",
      "git_rebase",
      "gitattributes",
      "gitcommit",
    },
    mason = none,
  },
  -- TODO: check that clang-format doesn't conflict with biome
  javascript = { mason = "biome" },
  json = {
    mason = none --[[ "biome" (already in javascript tools) ]],
  },
}

GET_TOOLS = function(tool_type)
  local m = {}
  for lang, _ in pairs(LANG_TOOLS) do
    local tool = LANG_TOOLS[lang][tool_type]
    if tool ~= nil then
      m[lang] = LANG_TOOLS[lang][tool_type]
    elseif tool == none then
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
