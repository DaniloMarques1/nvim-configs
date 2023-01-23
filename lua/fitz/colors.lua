require('ayu').setup({
  --mirage = "true",
  overrides = {
    --Normal = { fg = '#bcbcbc', bg='#000000' },
    Comment = { fg = '#585858' }, -- ffc0cb
    WinSeparator = { bg = 'none' },
    StatusLine = { bg = '#C6C6C6', fg='#000000' },
    Visual = { bg = '#00005f' },
    --CursorLine = {bg = '#1b1b1b'},
    CursorLine = {bg = 'none'},
    CursorLineNr = {bg = 'none', fg="#FFFF47"},
    LineNr = { bg="none", fg="#838383" },
  }
})

require("catppuccin").setup {
    flavour = "mocha",
    background = {
        light = "latter",
        dark = "mocha",
    },
    color_overrides = {
        mocha = {
            base = "#000000",
        },
    }
}

vim.cmd[[colorscheme catppuccin-mocha]]
