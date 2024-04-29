#!/bin/bash

# List of all packages to install.
# Currently this requires that each package
# lives on github.com
PACKAGES=(
	"nvim-telescope/telescope.nvim"
	"nvim-lua/plenary.nvim"
	"nvim-telescope/telescope-fzf-native.nvim"
	"tpope/vim-fugitive"
	"neovim/nvim-lspconfig"
	"tanvirtin/monokai.nvim"
)

mkdir -p /home/fitz/.local/share/nvim/site/pack/plugins/start
cd /home/fitz/.local/share/nvim/site/pack/plugins/start

for package in "${PACKAGES[@]}"
do
	git clone "https://github.com/$package" &
done
echo "done..."
