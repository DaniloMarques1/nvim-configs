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
require("lazy").setup({
    'Mofiqul/vscode.nvim',
    'tpope/vim-fugitive',
    'nvim-tree/nvim-web-devicons',
    {
        'neovim/nvim-lspconfig',
        dependencies = {
            'williamboman/mason.nvim',
            'williamboman/mason-lspconfig.nvim'
        }
    },
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
})