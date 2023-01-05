require('ayu').setup({
    mirage = "true",
  overrides = {
    --Normal = { fg = '#bcbcbc', bg='#000000' },
    Comment = { fg = '#585858' }, -- ffc0cb
    WinSeparator = { bg = 'none' },
    --StatusLine = { bg = '#303030', fg='#bcbcbc' },
    Visual = { bg = '#00005f' },
    --CursorLine = {bg = '#1b1b1b'},
    CursorLine = {bg = 'none'},
    CursorLineNr = {bg = 'none', fg="#717171"}
  }
})

vim.cmd('colorscheme ayu')
