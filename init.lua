-- set vim.o and vim.g options
require("options")

-- add my custom keybinds
require("mappings")

-- install lazy.nvim and pass in lua/plugins/init.lua
require("config.lazy").setup("plugins")
