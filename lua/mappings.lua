return {
  -- Allows quick access to netrw via cmd/win + b
  vim.keymap.set('n', '<D-b>', '<Cmd>Ex<CR>'),
  -- Since <Tab> = ^I (literally), it makes sense to map shift+tab to ^O
  vim.keymap.set('n', '<S-Tab>', '<C-O>'),
  -- stops the unnamed buffer being overwritten with the replaced content when
  -- pasting over a visual selection
  -- [c]hange to delete text into a register and then point "" back to "0 before
  -- inserting
  -- FIXME:
  vim.keymap.set('v', 'P', 'c<Esc>"0p'),
}
