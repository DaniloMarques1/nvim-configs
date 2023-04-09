--require('ayu').setup({
--    mirage = false,
--    overrides = {
--        WinSeparator = { bg = 'none' },
--    }
--})
--vim.cmd[[colorscheme ayu]]
--
require("catppuccin").setup {
    flavour = "mocha", -- latte, frappe, macchiato, mocha
    term_colors = true,
    transparent_background = false,
    no_italic = false,
    no_bold = false,
    styles = {
        comments = {},
        conditionals = {},
        loops = {},
        functions = {},
        keywords = {},
        strings = {},
        variables = {},
        numbers = {},
        booleans = {},
        properties = {},
        types = {},
    },
    color_overrides = {
        mocha = {
            base = "#1e1e1e",
            mantle = "#1e1e1e",
            crust = "#1e1e1e",
        },
    },
    highlight_overrides = {
        mocha = function(C)
            return {
                CmpBorder = { fg = C.surface2 },
                Pmenu = { bg = C.none },
                TelescopeBorder = { link = "FloatBorder" },
                WinSeparator = {bg = 'None'}
            }
        end,
    },
}

--vim.cmd.colorscheme "catppuccin"
vim.cmd.colorscheme "monokai_pro"
