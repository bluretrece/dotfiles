call plug#begin('~/.config/nvim/plugged')
Plug 'vimoxide/vim-cinnabar'
Plug 'folke/tokyonight.nvim'
Plug 'camspiers/lens.vim'
Plug 'fcpg/vim-farout'
Plug 'alx741/vim-stylishask', { 'for': ['haskell'] }
Plug 'alx741/vim-hindent', { 'for': ['haskell'] }
Plug 'jose-elias-alvarez/buftabline.nvim'
Plug 'idris-hackers/idris-vim', {'for': ['idris']}
Plug 'kyazdani42/nvim-web-devicons' " lua
Plug 'derekwyatt/vim-scala', { 'for': ['scala'] }
Plug 'tiagovla/tokyodark.nvim'
Plug 'nvim-lua/lsp-status.nvim'
Plug 'justinmk/vim-sneak'
Plug 'machakann/vim-highlightedyank'
Plug 'rust-lang/rust.vim'
Plug 'racer-rust/vim-racer'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'pangloss/vim-javascript', {'for': ['javascript', 'html', 'jsx']}
Plug 'leafgarland/typescript-vim', {'for': ['javascript', 'html', 'jsx']}
Plug 'maxmellon/vim-jsx-pretty', {'for': ['javascript', 'html', 'jsx']}
Plug 'HerringtonDarkholme/yats.vim'
Plug 'rhysd/vim-clang-format'
Plug 'neovimhaskell/haskell-vim', { 'for': ['haskell'] }
Plug 'tpope/vim-surround'
Plug 'racer-rust/vim-racer'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'tpope/vim-fugitive'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'luochen1990/rainbow'
Plug 'jiangmiao/auto-pairs'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'WolfgangMehner/c-support', {'for': ['cpp']}
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'} 
Plug 'chriskempson/base16-vim'
Plug 'joshdick/onedark.vim'
Plug 'sainnhe/sonokai'
Plug 'christoomey/vim-tmux-navigator'
Plug 'branwright1/salvation-vim'
Plug 'romgrk/doom-one.vim'
Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'kyazdani42/nvim-tree.lua'
Plug 'easymotion/vim-easymotion'
Plug 'glepnir/oceanic-material'
Plug 'glepnir/galaxyline.nvim' , {'branch': 'main'}
Plug 'mbbill/undotree'
Plug 'franbach/miramare'
Plug 'tpope/vim-commentary'
Plug 'folke/lsp-trouble.nvim'
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-lua/lsp_extensions.nvim'
Plug 'hrsh7th/nvim-compe'
Plug 'liuchengxu/vista.vim'
Plug 'glepnir/dashboard-nvim'
Plug 'tjdevries/colorbuddy.nvim'
Plug 'marko-cerovac/material.nvim'
" === Git integration 
" if has('nvim') || has('patch-8.0.902')
"   Plug 'mhinz/vim-signify'
" else
"   Plug 'mhinz/vim-signify', { 'branch': 'legacy' }
" endif
" Plug 'airblade/vim-gitgutter'
" Plug 'romgrk/barbar.nvim'




call plug#end()
lua require("trouble").setup {}
