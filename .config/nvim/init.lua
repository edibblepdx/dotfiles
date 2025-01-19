-- Set <space> as the leader key
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- nerd font installed
vim.g.have_nerd_font = true

require'options'
require'keymaps'

require("config.lazy")
