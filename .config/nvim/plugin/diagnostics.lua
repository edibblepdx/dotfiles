vim.keymap.set('n', '<leader>d', vim.diagnostic.open_float, { desc = "Show diagnostic float" })
vim.diagnostic.config({
  virtual_text = true,
  severity_sort = true,
})
