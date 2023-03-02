-- will go to remaps
vim.keymap.set('n', '<C-s>', ':w<cr>')
vim.keymap.set('n', '<leader>q', ':bd!<cr>')
vim.keymap.set('n', '<C-l>q', ':noh<cr>')

vim.cmd [[map \ ^]]

vim.cmd [[autocmd FileType go  map <F12> :!go fmt ./...<cr>]]
vim.cmd [[autocmd FileType go setlocal shiftwidth=8 tabstop=8 noexpandtab]]

vim.cmd [[autocmd FileType javascript,typescript setlocal shiftwidth=2 tabstop=2]]

vim.cmd 'tnoremap <Esc> <C-\\><C-n>'
vim.cmd [[nnoremap <leader>sh <cmd>sp term://bash <cr>]]
vim.cmd [[set hidden]]

vim.cmd [[map <C-Left> :tabprev<cr>]]
vim.cmd [[map <C-Right> :tabnext<cr>]]

vim.cmd [[nnoremap <leader>te <cmd>vs term://bash \| vertical resize 80;<cr>]]
