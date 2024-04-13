require('mason').setup()
require("mason-lspconfig").setup()
--require'telescope'.setup {
--	defaults = { file_ignore_patterns = { "node_modules"}},
--}
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
end

require("mason-lspconfig").setup_handlers({
    function (server_name)
        local init_options = nil
        if (server_name == 'tsserver') then
            init_options = {
                preferences = {
                    includeCompletionsForModuleExports=false,
                }
            }
        end

        require('lspconfig')[server_name].setup{
            on_attach = on_attach,
            flags = lsp_flags,
            init_options = init_options,
        }
    end
})

vim.diagnostic.config {
    virtual_text = false,
    signs = false,
    underline = false,
}

vim.cmd [[autocmd BufWritePre *.go lua vim.lsp.buf.format()]]
vim.api.nvim_create_autocmd('BufWritePre', {
    pattern = {'*.tsx', '*.ts', '*.js', '*.jsx'},
    command = 'silent! EslintFixAll',
    group = vim.api.nvim_create_augroup('Format', {})
})

-- telescope

local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", function()
	builtin.find_files()
end, {})
vim.keymap.set("n", "<leader>bb", function()
	builtin.buffers()
end, {})
vim.keymap.set("n", "<C-p>", function()
	builtin.git_files()
end, {})
vim.keymap.set("n", "<leader>gg", function()
	builtin.live_grep()
end, {})
vim.keymap.set("n", "<leader>rf", function()
	builtin.lsp_references()
end, {})
--local builtin = require("telescope.builtin")
--vim.keymap.set("n", "<leader>ff", function()
--	builtin.find_files()
--end, {})
--vim.keymap.set("n", "<leader>bb", function()
--	builtin.buffers()
--end, {})
--vim.keymap.set("n", "<C-p>", function()
--	builtin.git_files()
--end, {})
--vim.keymap.set("n", "<leader>gg", function()
--	builtin.live_grep()
--end, {})
--vim.keymap.set("n", "<leader>rf", function()
--	builtin.lsp_references()
--end, {})

-- fzf
vim.keymap.set('n', '<leader>ff', ':Files<cr>')
vim.keymap.set('n', '<leader>ag', ':Ag<cr>')
vim.keymap.set('n', '<leader>bb', ':Buffers!<cr>')

vim.opt.guicursor=''
vim.opt.number=true
vim.opt.fillchars:append { eob = " " }
vim.keymap.set('n', '<C-s>', ':w<cr>')
vim.keymap.set('n', '<C-l>q', ':noh<cr>')
vim.keymap.set('n', '<leader>q', ':bd!<cr>')
vim.o.number=false
vim.cmd[[colorscheme retrobox]]

vim.cmd [[map <C-Left> :tabprev<cr>]]
vim.cmd [[map <C-Right> :tabnext<cr>]]

vim.cmd[[filetype on]]
vim.cmd[[filetype indent on]]
vim.cmd[[filetype plugin on]]
vim.cmd[[filetype indent plugin on]]
vim.opt.tabstop=4
vim.opt.shiftwidth=4

-- use inside of a terminal
vim.cmd 'tnoremap <Esc> <C-\\><C-n>'
vim.cmd [[set hidden]]

