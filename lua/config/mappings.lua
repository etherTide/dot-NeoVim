--[[
My Mappings
--]]
-- Allows quick access to netrw
vim.keymap.set("n", "<D-b>", "<Cmd>25Lexplore<CR>")
-- Allows quick access to vim terminal
vim.keymap.set("n", "<D-:>", "<Cmd>te<CR>")
-- Since <Tab> = ^I (literally), it makes sense to map shift+tab to ^O
vim.keymap.set("n", "<S-Tab>", "<C-O>")
-- stops the unnamed buffer being overwritten with the replaced content when
-- pasting over a visual selection
-- [c]hange to delete text into a register and then point "" back to "0 before
-- inserting
-- FIXME: perhaps append a command to manually set "" to "0 to the end of the map?
vim.keymap.set("v", "P", 'c<Esc>"0p')

--[[
Kickstart.nvim Mappings
--]]
-- Clear highlights on search when pressing <Esc> in normal mode
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")
-- Diagnostic keymaps
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix list" })
-- WARN: This won't work in all terminal emulators/tmux/etc. Try your own mapping
--       or just use <C-\><C-n> to exit terminal mode
vim.keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })

--[[
Kickstart.nvim Autocommands
See `:help lua-guide-autocommands`
--]]
-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.hl.on_yank()`
vim.api.nvim_create_autocmd("TextYankPost", {
  desc = "Highlight when yanking (copying) text",
  group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
  callback = function()
    vim.hl.on_yank()
  end,
})

--[[
Window Navigation
--]]
vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })
