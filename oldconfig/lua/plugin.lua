local Plug = vim.fn['plug#']

vim.call('plug#begin', '~/.config/nvim/plugged')

Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

Plug 'navarasu/onedark.nvim'
Plug 'tjdevries/colorbuddy.vim'
Plug 'tjdevries/gruvbuddy.nvim'

Plug 'Shatur/neovim-ayu'


Plug('nvim-treesitter/nvim-treesitter')

Plug 'williamboman/mason.nvim'
Plug 'neovim/nvim-lspconfig'

--Plug 'hrsh7th/cmp-nvim-lsp'
--Plug 'hrsh7th/cmp-buffer'
--Plug 'hrsh7th/cmp-path'
--Plug 'hrsh7th/nvim-cmp'

vim.call('plug#end')

