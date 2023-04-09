require('fitz.lazy')
require('fitz.colors')
require('fitz.remap')

vim.opt.guicursor=''
vim.opt.autoread = true
vim.opt.smartindent = true
vim.opt.backup = false
vim.opt.writebackup = false
vim.opt.swapfile = false
vim.opt.hlsearch = false
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.fillchars:append { eob = " " }
vim.o.ls = 3
