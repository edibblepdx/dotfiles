-- [[ options ]]

-- show line number
vim.opt.number = true

-- showmode handled by mini statusline
vim.opt.showmode = false

-- enable mouse
vim.opt.mouse = 'a'

-- sync OS clipboard and nvim
vim.schedule(function() -- should increase startup
  vim.opt.clipboard = 'unnamedplus'
end)

-- Enable break indent (maintains indent for wrapped text)
vim.opt.breakindent = true

-- Save undo history
vim.opt.undofile = true

-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
-- \c => ignore case
-- \C => enforce case
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Keep signcolumn on by default (left-hand warnings)
vim.opt.signcolumn = 'yes'

-- Decrease update time
-- write swapfile to disk every 250 milliseconds
vim.opt.updatetime = 250

-- Decrease mapped sequence wait time
-- wait 300 milliseconds for mapped sequence to complete
--vim.opt.timeoutlen = 300

-- Configure how new splits should be opened
vim.opt.splitright = true -- new window on right
vim.opt.splitbelow = true -- new window on bottom

-- Sets how neovim will display certain whitespace characters in the editor.
vim.opt.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

-- Preview substitutions live, as you type!
vim.opt.inccommand = 'split'

-- Cursorline <3
vim.opt.cursorline = true

-- Scroll line padding
vim.opt.scrolloff = 2

vim.opt.smartindent = true
vim.opt.autoindent = true
vim.opt.ruler = true
vim.opt.wrap = true
vim.opt.hlsearch = true

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.softtabstop = 4
