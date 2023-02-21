require('ayu').setup({
  overrides = {
    Normal = { bg='#1e1e1e' },
    WinSeparator = { bg = 'none' },
  }
})

--vim.cmd[[colorscheme vscode]]
vim.cmd[[colorscheme ayu]]
