vim.cmd [[packadd packer.nvim]]
return require('packer').startup(function()
    use 'wbthomason/packer.nvim'
    -- use {'camspiers/snap'}
    use '9mm/vim-closer'
    use 'folke/tokyonight.nvim' 
    use 'camspiers/lens.vim'
    use 'kyazdani42/nvim-web-devicons' 
    use 'nvim-lua/lsp-status.nvim'
    use 'machakann/vim-highlightedyank'
    use 'rust-lang/rust.vim'
    use 'racer-rust/vim-racer'
    use 'phaazon/hop.nvim'
    use 'rafamadriz/neon'
    use({'scalameta/nvim-metals'})
    use "ckipp01/scala-utils.nvim"
    use {
	'nvim-telescope/telescope.nvim',
	requires = {{'nvim-lua/popup.nvim'}}
    }
    use {'neovimhaskell/haskell-vim', ft = 'hs'}
    use 'tpope/vim-surround'
    use 'tpope/vim-fugitive'
    -- use 'nvim-treesitter/nvim-treesitter'
    use 'chriskempson/base16-vim'
    use 'christoomey/vim-tmux-navigator'
    use 'kyazdani42/nvim-tree.lua'
    use 'tpope/vim-commentary'
    use 'folke/lsp-trouble.nvim'
    use 'neovim/nvim-lspconfig'
    use 'nvim-lua/lsp_extensions.nvim'
    use 'hrsh7th/nvim-compe'
    use 'liuchengxu/vista.vim'
    use 'glepnir/dashboard-nvim'
    use 'marko-cerovac/material.nvim'
    use {'tjdevries/colorbuddy.vim'}
    -- use {'alx741/vim-stylishask','alx741/vim-hindent', {ft = 'hs'}}
end)
