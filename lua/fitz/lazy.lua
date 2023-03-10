local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

vim.g.mapleader = " " -- needed for lazy
vim.g.maplocalleader = "," -- needed for lazy
require("lazy").setup({
    'Shatur/neovim-ayu',
    { "catppuccin/nvim", name = "catppuccin" },
    'tpope/vim-fugitive',
    'nvim-tree/nvim-web-devicons',
    {

	  'nvim-telescope/telescope.nvim',
      tag = '0.1.0',
      dependencies = {
          'nvim-lua/plenary.nvim'
      }
    },
    {
        'nvim-treesitter/nvim-treesitter',
        build = ':TSUpdate'
    },
    { 'nvim-lualine/lualine.nvim', opts = {}},
    {
        'neovim/nvim-lspconfig',
        dependencies = {
            'williamboman/mason.nvim',
            'williamboman/mason-lspconfig.nvim'
        }
    },
    {
        "nvim-neorg/neorg",
        build = ":Neorg sync-parsers",
        opts = {
            load = {
                ["core.defaults"] = {}, -- Loads default behaviour
                ["core.norg.concealer"] = {}, -- Adds pretty icons to your documents
                ["core.norg.dirman"] = { -- Manages Neorg workspaces
                config = {
                    workspaces = {
                        notes = "~/notes",
                    },
                },
            },
        },
    },
    dependencies = { { "nvim-lua/plenary.nvim" } },
}
})
