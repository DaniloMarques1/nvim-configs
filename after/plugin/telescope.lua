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
