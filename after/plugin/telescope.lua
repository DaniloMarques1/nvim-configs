local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', function() builtin.find_files(require('telescope.themes').get_dropdown({})) end, {})
vim.keymap.set('n', '<leader>bb', function() builtin.buffers(require('telescope.themes').get_dropdown({})) end, {})
vim.keymap.set('n', '<C-p>', function() builtin.git_files(require('telescope.themes').get_dropdown({})) end, {})
vim.keymap.set('n', '<leader>gg', function() builtin.live_grep(require('telescope.themes').get_dropdown({})) end, {})
vim.keymap.set('n', '<leader>rf', function() builtin.lsp_references(require('telescope.themes').get_dropdown({})) end, {})
