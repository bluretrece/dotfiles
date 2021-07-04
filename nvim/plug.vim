call plug#begin('~/.config/nvim/plugged')
Plug 'folke/tokyonight.nvim'
Plug 'camspiers/lens.vim'
Plug 'alx741/vim-stylishask', 
Plug 'alx741/vim-hindent'
" Plug 'idris-hackers/idris-vim', {'for': ['idris']}
Plug 'kyazdani42/nvim-web-devicons' 
Plug 'nvim-lua/lsp-status.nvim'
Plug 'machakann/vim-highlightedyank'
Plug 'rust-lang/rust.vim'
Plug 'racer-rust/vim-racer'
Plug 'phaazon/hop.nvim'
Plug 'rafamadriz/neon'
"Scala
Plug 'scalameta/nvim-metals'
Plug 'ckipp01/scala-utils.nvim'
"Telescope
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'neovimhaskell/haskell-vim'
Plug 'tpope/vim-surround'
Plug 'racer-rust/vim-racer'
Plug 'tpope/vim-fugitive'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'} 
Plug 'chriskempson/base16-vim'
Plug 'christoomey/vim-tmux-navigator'
Plug 'kyazdani42/nvim-tree.lua'
Plug 'glepnir/galaxyline.nvim' , {'branch': 'main'}
Plug 'tpope/vim-commentary'
Plug 'folke/lsp-trouble.nvim'
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-lua/lsp_extensions.nvim'
Plug 'hrsh7th/nvim-compe'
Plug 'liuchengxu/vista.vim'
Plug 'glepnir/dashboard-nvim'
Plug 'marko-cerovac/material.nvim'
" Plug 'hoob3rt/lualine.nvim'
" === Git integration 
" if has('nvim') || has('patch-8.0.902')
"   Plug 'mhinz/vim-signify'
" else
"   Plug 'mhinz/vim-signify', { 'branch': 'legacy' }
" endif
" Plug 'airblade/vim-gitgutter'
" Plug 'romgrk/barbar.nvim'
" Plug 'itchyny/lightline.vim'
Plug 'tjdevries/colorbuddy.nvim'


call plug#end()
lua require("trouble").setup {}
lua require("hop").setup {}
" lua require("lualine").setup { options = {theme = 'powerline', section_separators = '', component_separators = ''} }
