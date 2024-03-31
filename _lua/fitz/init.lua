require('fitz.lazy')
require('fitz.colors')
require('fitz.remap')

--vim.opt.guicursor='n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor,sm:block-blinkwait175-blinkoff150-blinkon175'
vim.opt.guicursor=''
vim.opt.autoread = true
vim.opt.smartindent = true
vim.opt.backup = false
vim.opt.writebackup = false
vim.opt.swapfile = false
vim.opt.hlsearch = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.fillchars:append { eob = " " }
vim.o.ls = 3
vim.o.statusline = '    %f %m | %l:%c %L%=%P'
