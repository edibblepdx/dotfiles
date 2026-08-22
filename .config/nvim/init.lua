-- Set <space> as the leader key
vim.g.mapleader = ' '
vim.g.maplocalleader = '\\'

-- nerd font installed
vim.g.have_nerd_font = true

require 'options'
require 'keymaps'

require("config.lazy")

-- Save and Load Folds
local fold = vim.api.nvim_create_augroup('RememberFolds', { clear = true })

vim.api.nvim_create_autocmd('BufWinLeave', {
  callback = function()
    if vim.bo.buftype ~= '' then return end
    if vim.api.nvim_buf_get_name(0) == '' then return end
    vim.cmd('mkview')
  end,
  desc = 'Save folds on exit',
  group = fold,
})

vim.api.nvim_create_autocmd('BufWinEnter', {
  callback = function()
    if vim.bo.buftype ~= '' then return end
    if vim.api.nvim_buf_get_name(0) == '' then return end
    vim.cmd('silent! loadview')
  end,
  desc = 'Load folds on start',
  group = fold,
})
