-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
--vim.cmd('packadd packer.nvim')

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.0',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  use {
	  'Shatur/neovim-ayu'
  }

  use { "catppuccin/nvim", as = "catppuccin" }

  use {
      "ellisonleao/gruvbox.nvim"
  }

  use ('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})

  use {
      'neovim/nvim-lspconfig'
  }

  use {
      'williamboman/mason.nvim'
  }

  use {
      'williamboman/mason-lspconfig.nvim'
  }

  use {
      'lewis6991/gitsigns.nvim',
      config = function()
          require('gitsigns').setup {
              signcolumn = false,
          }
      end
  }

end)

