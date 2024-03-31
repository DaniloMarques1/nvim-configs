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
            base = "#000000",
            mantle = "#000000",
            crust = "#000000",
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

--require("monokai-pro").setup({
--  transparent_background = false,
--  terminal_colors = true,
--  devicons = false, -- highlight the icons of `nvim-web-devicons`
--  styles = {
--    comment = { italic = true },
--    keyword = { italic = true }, -- any other keyword
--    type = { italic = true }, -- (preferred) int, long, char, etc
--    storageclass = { italic = true }, -- static, register, volatile, etc
--    structure = { italic = true }, -- struct, union, enum, etc
--    parameter = { italic = true }, -- parameter pass in function
--    annotation = { italic = true },
--    tag_attribute = { italic = true }, -- attribute of tag in reactjs
--  },
--  filter = "pro", -- classic | octagon | pro | machine | ristretto | spectrum
--  -- Enable this will disable filter option
--  day_night = {
--    enable = false, -- turn off by default
--    day_filter = "pro", -- classic | octagon | pro | machine | ristretto | spectrum
--    night_filter = "spectrum", -- classic | octagon | pro | machine | ristretto | spectrum
--  },
--  inc_search = "background", -- underline | background
--  background_clear = {
--    -- "float_win",
--    "toggleterm",
--    "telescope",
--    -- "which-key",
--    "renamer",
--    "notify",
--    -- "nvim-tree",
--    -- "neo-tree",
--    -- "bufferline", -- better used if background of `neo-tree` or `nvim-tree` is cleared
--  },-- "float_win", "toggleterm", "telescope", "which-key", "renamer", "neo-tree", "nvim-tree", "bufferline"
--  plugins = {
--    bufferline = {
--      underline_selected = false,
--      underline_visible = false,
--    },
--    indent_blankline = {
--      context_highlight = "default", -- default | pro
--      context_start_underline = false,
--    },
--  },
--  ---@param c Colorscheme
--  override = function(c)
--      return {
--        WinSeparator = {fg = '#ffffff'},
--        --Normal = {bg = '#272822'}
--      }
--  end,
--})
--vim.cmd.colorscheme "monokai"
