require('fitz.remap')
require('fitz.colors')
require('fitz.packer')

vim.opt.guicursor='n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor,sm:block-blinkwait175-blinkoff150-blinkon175'

vim.opt.nu = true
vim.opt.relativenumber = true
vim.opt.syntax = 'enable'
vim.opt.autoindent = true
vim.opt.autoread = true
vim.opt.smartindent = true
vim.opt.backup = false
vim.opt.writebackup = false
vim.opt.swapfile = false
vim.opt.hlsearch = true
vim.opt.splitright = true
vim.opt.splitbelow = true
vim.opt.tabstop=4
vim.opt.shiftwidth=4
vim.opt.expandtab=true

vim.keymap.set('n', '<C-s>', ':w<cr>')
vim.keymap.set('n', '<leader>q', ':bd!<cr>')
vim.keymap.set('n', '<C-l>q', ':noh<cr>')

vim.cmd[[map \ ^]]

vim.cmd [[autocmd FileType go  map <F12> :!go fmt ./...<cr>]]

vim.cmd'tnoremap <Esc> <C-\\><C-n>'
vim.cmd[[nnoremap <leader>sh <cmd>sp term://bash <cr>]]
vim.cmd[[set hidden]]

vim.cmd[[map <C-Left> :tabprev<cr>]]
vim.cmd[[map <C-Right> :tabnext<cr>]]

vim.o.statusline = '   %f %m | %l:%c %L%=%P'
vim.o.ls = 3
