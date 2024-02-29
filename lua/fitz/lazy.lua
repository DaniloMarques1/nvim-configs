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
    { "catppuccin/nvim", name = "catppuccin" },
    'tpope/vim-fugitive',
    {
	  'nvim-telescope/telescope.nvim',
      tag = "0.1.5",
      dependencies = {
          'nvim-lua/plenary.nvim'
      }
    },
    {
        'nvim-treesitter/nvim-treesitter',
        build = ':TSUpdate'
    },
    {
        'neovim/nvim-lspconfig',
        dependencies = {
            'williamboman/mason.nvim',
            'williamboman/mason-lspconfig.nvim',
            --'hrsh7th/nvim-cmp',
            --'hrsh7th/cmp-nvim-lsp',
            --'hrsh7th/cmp-buffer',
            --'hrsh7th/cmp-path',
        }
    },
})
