-- :help option-list

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.colorcolumn = '80'

vim.opt.mouse = 'a'
vim.opt.showmode = true
vim.opt.scrolloff = 10

-- Sync clipboard
vim.opt.clipboard = 'unnamedplus'
vim.opt.breakindent = true
vim.opt.undofile = true

vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = true
-- Preview substitutions live
vim.opt.inccommand = 'split'

vim.opt.signcolumn = 'yes'
vim.opt.cursorline = true

vim.opt.updatetime = 250
vim.opt.timeoutlen = 300

vim.opt.splitright = true
vim.opt.splitbelow = true

-- Print unprintable
vim.opt.list = true
vim.opt.listchars = { tab = '│ ', trail = '·', nbsp = '␣' }
