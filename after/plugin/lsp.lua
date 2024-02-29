local opts = { noremap = true, silent = true }

vim.keymap.set('n', '<space>e', vim.diagnostic.open_float, opts)
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, opts)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, opts)
vim.keymap.set('n', '<space>d', vim.diagnostic.setloclist, opts)

local on_attach = function(client, bufnr)
    -- Enable completion triggered by <c-x><c-o>
    vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')
    client.server_capabilities.semanticTokensProvider = {}

    local bufopts = { noremap = true, silent = true, buffer = bufnr }
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopts)
    vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, bufopts)
    vim.keymap.set('n', '<space>ca', vim.lsp.buf.code_action, bufopts)
end


local lsp_flags = {
    -- This is the default in Nvim 0.7+
    debounce_text_changes = 150,
}


require("mason").setup()
require("mason-lspconfig").setup_handlers({
    function (server_name)
        local init_options = {}
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
    virtual_text = true,
    signs = false,
    underline = false,
}

-- auto format
vim.cmd [[autocmd BufWritePre *.go lua vim.lsp.buf.format()]]
vim.api.nvim_create_autocmd('BufWritePre', {
    pattern = {'*.tsx', '*.ts', '*.js', '*.jsx'},
    command = 'silent! EslintFixAll',
    group = vim.api.nvim_create_augroup('Format', {})
})


-- configurando autocomplete
-- Set up nvim-cmp.
--local cmp = require'cmp'
--
--cmp.setup({
--    mapping = cmp.mapping.preset.insert({
--        ['<C-b>'] = cmp.mapping.scroll_docs(-4),
--        ['<C-f>'] = cmp.mapping.scroll_docs(4),
--        ['<C-Space>'] = cmp.mapping.complete(),
--        ['<C-e>'] = cmp.mapping.abort(),
--        ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
--    }),
--    sources = cmp.config.sources({
--        { name = 'nvim_lsp' },
--    }, {
--        { name = 'buffer' },
--        { name = 'path' },
--    })
--})
