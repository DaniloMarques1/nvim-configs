vim.g.mapleader = ' '

vim.opt.number=true
vim.opt.relativenumber=true
vim.opt.cursorline=true

vim.opt.guicursor='n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor,sm:block-blinkwait175-blinkoff150-blinkon175'
--vim.opt.guicursor=''
vim.opt.mouse = 'a'
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

vim.cmd[[map <C-s> :w<cr>]]
vim.cmd[[nnoremap <C-l> :noh<cr>]]
vim.cmd[[nnoremap <leader>q :bd!<cr>]]

vim.cmd[[map <C-Left> :tabprev<cr>]]
vim.cmd[[map <C-Right> :tabnext<cr>]]

vim.cmd[[map \ ^]]

vim.cmd [[autocmd FileType go  map <F12> :!go fmt ./...<cr>]]
vim.cmd [[autocmd FileType go setlocal shiftwidth=8 tabstop=8 noexpandtab]]
vim.cmd [[autocmd FileType javascript setlocal shiftwidth=2 tabstop=2]]
vim.cmd [[autocmd FileType c map <F12> :! gcc %;<cr>]]

vim.cmd[[autocmd FileType markdown map j gj]]
vim.cmd[[autocmd FileType markdown map k gk]]
vim.cmd[[autocmd FileType markdown set wrap]]
vim.cmd[[autocmd FileType markdown set textwidth=80]]


vim.cmd'tnoremap <Esc> <C-\\><C-n>'
vim.cmd[[nnoremap <leader>sh <cmd>sp term://bash <cr>]]
vim.cmd[[set hidden]]

vim.o.statusline = '   %f %m | %l:%c %L%=%P'
vim.o.ls = 3

require('ayu').setup({
  overrides = {
    Normal = { fg = '#bcbcbc', bg='#000000' },
    Comment = { fg = '#585858' }, -- ffc0cb
    WinSeparator = { bg = 'none' },
    StatusLine = { bg = '#303030', fg='#bcbcbc' },
    Visual = { bg = '#00005f' },
    CursorLine = {bg = 'none'},
    CursorLineNr = {bg = 'none'}
  }
})
vim.cmd[[colorscheme ayu]]
----

--require('onedark').setup {
--    style = 'deep',
--    highlights = {
--        cursorline = {bg='none'},
--        cursorlinenr = {fg='#ECEE4A'},
--    }
--}
--require('onedark').load()

--require('colorbuddy').colorscheme('gruvbuddy')
--vim.cmd[[colorscheme gruvbox]]
--vim.cmd[[hi cursorline guibg=none]]
