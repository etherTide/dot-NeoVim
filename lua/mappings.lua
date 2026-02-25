return {
  -- Allows quick access to netrw
  vim.keymap.set('n', '<D-b>', '<Cmd>25Lexplore!<CR>'),

  -- Allows quick access to vim terminal
  vim.keymap.set('n', '<D-:>', '<Cmd>te<CR>'),

  -- Since <Tab> = ^I (literally), it makes sense to map shift+tab to ^O
  vim.keymap.set('n', '<S-Tab>', '<C-O>'),

  -- stops the unnamed buffer being overwritten with the replaced content when
  -- pasting over a visual selection
  -- [c]hange to delete text into a register and then point "" back to "0 before
  -- inserting
  -- FIXME: perhaps append a command to manually
  --        set "" to "0 to the end of the map?
  vim.keymap.set('v', 'P', 'c<Esc>"0p'),
}
