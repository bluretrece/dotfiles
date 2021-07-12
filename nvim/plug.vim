call plug#begin('~/.config/nvim/plugged')
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'nvim-lua/plenary.nvim'
Plug 'marko-cerovac/material.nvim'
Plug 'glepnir/galaxyline.nvim' , {'branch': 'main'}
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
call plug#end()
lua require("trouble").setup {}
lua require("hop").setup {}
