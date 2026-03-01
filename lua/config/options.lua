--[[
vim.g
]]
--
vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.g.have_nerd_font = true

--[[
vim.o
]]
--
vim.o.number = true
vim.o.relativenumber = true
vim.o.cursorline = true
vim.o.scrolloff = 10
vim.o.signcolumn = "yes"

vim.o.mouse = "a"

vim.o.showmode = false

vim.o.breakindent = true
vim.o.breakindentopt = "sbr"
vim.o.showbreak = "+++"
vim.cpoptions = "n"

vim.o.undofile = true

vim.o.ignorcase = true
vim.o.smartcase = true

vim.o.updatetime = 250
-- vim.o.timeoutlen = 300
vim.o.confirm = true

vim.o.splitright = true
vim.o.splitbelow = true

vim.o.list = true
vim.opt.listchars = { tab = "⇥ ", trail = "·", nbsp = "␣" }

vim.o.inccommand = "split"
