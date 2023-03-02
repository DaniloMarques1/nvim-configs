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
    'Mofiqul/vscode.nvim',
    'Shatur/neovim-ayu',
    'projekt0n/github-nvim-theme',
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
    { 'nvim-lualine/lualine.nvim', opts = {}},
    {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v1.x',
        dependencies = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},             -- Required
            {'williamboman/mason.nvim'},           -- Optional
            {'williamboman/mason-lspconfig.nvim'}, -- Optional

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},         -- Required
            {'hrsh7th/cmp-nvim-lsp'},     -- Required
            {'hrsh7th/cmp-path'},         -- Optional
            {'hrsh7th/cmp-buffer'},         -- Optional
            {'saadparwaiz1/cmp_luasnip'}, -- Optional
            {'hrsh7th/cmp-nvim-lua'},     -- Optional

            -- Snippets
            {'L3MON4D3/LuaSnip'},             -- Required
            {"j-hui/fidget.nvim", opts = {}},
        }
    }
})
