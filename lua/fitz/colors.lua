--require('ayu').setup({
--    mirage = false,
--    overrides = {
--        WinSeparator = { bg = 'none' },
--        Normal = {bg = '#17120A'},
--        Comment = {fg = '#CA7ACD'},
--    }
--})
--vim.cmd[[colorscheme ayu]]

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
                WinSeparator = { bg = 'None' },
                CursorLine = { bg = 'None' }
            }
        end,
    },
}

vim.cmd.colorscheme "catppuccin"
--
--local c = require('vscode.colors').get_colors()
--require('vscode').setup({
--    -- Alternatively set style in setup
--    -- style = 'light'
--
--    -- Enable transparent background
--    transparent = true,
--
--    -- Enable italic comment
--    italic_comments = true,
--
--    -- Disable nvim-tree background color
--    disable_nvimtree_bg = true,
--
--    -- Override colors (see ./lua/vscode/colors.lua)
--    color_overrides = {
--        vscLineNumber = '#FFFFFF',
--    },
--
--    -- Override highlight groups (see ./lua/vscode/theme.lua)
--    group_overrides = {
--        -- this supports the same val table as vim.api.nvim_set_hl
--        -- use colors from this colorscheme by requiring vscode.colors!
--        Cursor = { fg=c.vscDarkBlue, bg=c.vscLightGreen, bold=true },
--    }
--})
--require('vscode').load()
