vim.g.mapleader = " "
vim.keymap.set('n', '<space>d', vim.diagnostic.setloclist, opts)
local on_attach = function(client, bufnr)
    -- Enable completion triggered by <c-x><c-o>
    vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')
    client.server_capabilities.semanticTokensProvider = {}
    local bufopts = { noremap = true, silent = true, buffer = bufnr }
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopts)
    vim.keymap.set('n', '<space>ca', vim.lsp.buf.code_action, bufopts)
	vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, opts)
end

require('lspconfig').gopls.setup{
	on_attach = on_attach,
}

vim.diagnostic.config {
    virtual_text = false,
    signs = false,
    underline = false,
}

vim.cmd [[autocmd BufWritePre *.go lua vim.lsp.buf.format()]]
vim.cmd [[autocmd BufWritePre *.ts lua vim.lsp.buf.format()]]
vim.cmd [[autocmd BufWritePre *.tsx lua vim.lsp.buf.format()]]
vim.cmd [[autocmd BufWritePre *.js lua vim.lsp.buf.format()]]
vim.cmd [[autocmd BufWritePre *.jsx lua vim.lsp.buf.format()]]
vim.cmd [[autocmd BufWritePre *.html lua vim.lsp.buf.format()]]
vim.cmd [[autocmd BufWritePre *.css lua vim.lsp.buf.format()]]

-- 
--vim.api.nvim_create_autocmd('BufWritePre', {
--    pattern = {'*.tsx', '*.ts', '*.js', '*.jsx'},
--    command = 'silent! EslintFixAll',
--    group = vim.api.nvim_create_augroup('Format', {})
--})

-- telescope
-- You dont need to set any of these options. These are the default ones. Only
-- the loading is important
require('telescope').setup {
  extensions = {
    fzf = {
      fuzzy = true,                    -- false will only do exact matching
      override_generic_sorter = true,  -- override the generic sorter
      override_file_sorter = true,     -- override the file sorter
      case_mode = "smart_case",        -- or "ignore_case" or "respect_case"
                                       -- the default case_mode is "smart_case"
    }
  }
}
-- To get fzf loaded and working with telescope, you need to call
-- load_extension, somewhere after setup function:
require('telescope').load_extension('fzf')

local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", function()
	builtin.find_files(require('telescope.themes').get_ivy({}))
end, {})
vim.keymap.set("n", "<leader>bb", function()
	builtin.buffers(require('telescope.themes').get_ivy({}))
end, {})
vim.keymap.set("n", "<C-p>", function()
	builtin.git_files(require('telescope.themes').get_ivy({}))
end, {})
vim.keymap.set("n", "<leader>gg", function()
	builtin.live_grep(require('telescope.themes').get_ivy({}))
end, {})
vim.keymap.set("n", "<leader>rf", function()
	builtin.lsp_references(require('telescope.themes').get_ivy({}))
end, {})

-- fzf
--vim.keymap.set('n', '<leader>ff', ':Files<cr>')
--vim.keymap.set('n', '<leader>ag', ':Ag<cr>')
--vim.keymap.set('n', '<leader>bb', ':Buffers!<cr>')


vim.opt.guicursor=''
vim.opt.number=true
--vim.opt.fillchars:append { eob = " " }
vim.keymap.set('n', '<C-s>', ':w<cr>')
vim.keymap.set('n', '<C-l>q', ':noh<cr>')
vim.keymap.set('n', '<leader>q', ':bd<cr>')
vim.o.number=false
--vim.cmd[[colorscheme retrobox]]
vim.cmd[[colorscheme monokai_pro]]
vim.keymap.set('n', '<c-n>', ':Vex!<cr>')

vim.cmd [[map <C-Left> :tabprev<cr>]]
vim.cmd [[map <C-Right> :tabnext<cr>]]

vim.cmd[[filetype on]]
vim.cmd[[filetype indent on]]
vim.cmd[[filetype plugin on]]
vim.cmd[[filetype indent plugin on]]
vim.opt.tabstop=4
vim.opt.shiftwidth=4
vim.o.splitright=true

-- use inside of a terminal
vim.cmd 'tnoremap <Esc> <C-\\><C-n>'
vim.cmd [[set hidden]]
vim.cmd [[let g:netrw_liststyle = 3]]
vim.cmd [[let g:netrw_browse_split = 4]]
vim.cmd [[let g:netrw_altv = 1]]
vim.cmd [[let g:netrw_winsize = 25]]
vim.cmd [[let g:netrw_winsize = 25]]
vim.cmd [[let g:netrw_banner = 0]]
