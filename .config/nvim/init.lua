-- Set <space> as the leader key
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- nerd font installed
vim.g.have_nerd_font = true

require 'options'
require 'keymaps'

require("config.lazy")

local plugins = require('lazy').plugins()
local function mkview()
  if vim.bo.buftype ~= '' then return end
  if plugins[vim.bo.filetype] then return end
  vim.cmd('mkview')
end

local function loadview()
  if vim.bo.buftype ~= '' then return end
  if plugins[vim.bo.filetype] then return end
  vim.cmd('silent! loadview')
end

-- Save and Load Folds
local fold = vim.api.nvim_create_augroup('RememberFolds', { clear = true })
vim.api.nvim_create_autocmd('BufWinLeave', {
  callback = mkview,
  desc = 'Save folds on exit',
  group = fold,
})
vim.api.nvim_create_autocmd('BufWinEnter', {
  callback = loadview,
  desc = 'Load folds on start',
  group = fold,
})
