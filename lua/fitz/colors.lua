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

vim.cmd('colorscheme ayu')
