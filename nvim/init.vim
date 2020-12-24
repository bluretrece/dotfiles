
"███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗
"████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║
"██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║
"██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║
"██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║
"╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝

set undofile
set undodir=~/.vim/undodir

" Map Leader to Space
let mapleader = "\<Space>"

"source vim config file with leader + s
nnoremap <leader>s :source %<CR>
"source and PlugInstall
nnoremap <silent><leader>1 :source ~/.vimrc \| :PlugInstall<CR>
nnoremap <silent><leader>2 :source ~/.vimrc \| :PlugClean<CR>

"Bind :w to save with ctrl+s
:nmap <c-s> :w<CR>
:imap <c-s> <Esc>:w<CR>a

inoremap <C-e> <C-o>A
" Stop text search highlight
map <esc> :noh<cr>

"For haskell only
autocmd FileType haskell setlocal expandtab

" Let's see if this gives us sane tabs
set shiftwidth=4
set shiftround
set tabstop=8
" set softtabstop=0
set softtabstop=4
set smarttab
set cursorline

" We do NOT want expandtab
" it would convert all tabs to spaces
" This would break make if nothing else
" set expandtab
set noexpandtab
 
" the following will make an exception just for make
" if we ever start using just spaces, as perhaps we should
autocmd FileType make setlocal noexpandtab

" Makes y copy to the system clipboard.
set clipboard+=unnamedplus

"Easier buffer navigation
"nnoremap <Leader>e :bn<CR>
"nnoremap <Leader>w :bp<CR>
nnoremap <Leader>q :bd<CR>
map <C-w> :bprevious<CR>
map <C-e> :bnext<CR>
map <C-q> :bq<CR>


"Close split with ctrl-q
map <C-q> :q<CR>

"Sends any deleted text to the black hole register. 
"nnoremap d "_d

nnoremap x "_x
nnoremap d "_d
nnoremap D "_D
vnoremap d "_d

nnoremap <leader>d ""d
nnoremap <leader>D ""D
vnoremap <leader>d ""d


"Nvim config 
syntax on
filetype plugin indent on
set showcmd
set number
set relativenumber
set hidden

"Racer PATH for Rust auto completion.
let g:racer_cmd = "/home/luis/.cargo/bin/racer"
let g:racer_experimental_completer = 1

"FZF Keybindings
map <C-F> :FZF<CR>
map <C-B> :Buffers<CR>
let g:fzf_layout = { 'down': '~20%' }
let g:fzf_layout = { 'window': { 'width': 0.8, 'height': 0.5, 'highlight': 'Comment' } }


"tabline config
"""let g:airline#extensions#tabline#enabled = 0
"""let g:airline_theme='dark'
"""let g:airline_powerline_fonts = 1

"Lightline
let g:lightline = {
      \ 'colorscheme': 'powerlineish',
      \ }

"" Use ctrl-[hjkl] to select the active split!
nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>

"Clang formating
nnoremap <Leader>f :<C-u>ClangFormat<CR>

"Window resizing
"noremap <silent> <C-S-Up> :resize -5<CR>
"noremap <silent> <C-S-Down> :resize +5<CR>
"noremap <silent> <C-S-Left> :vertical resize -5<CR>
"noremap <silent> <C-S-Right> :vertical resize +5<CR>

" Window resizing alternative using arrow keys
nnoremap <Left> :vertical resize +2<CR>
nnoremap <Right> :vertical resize -2<CR>
nnoremap <Up> :resize -2<CR>
nnoremap <Down> :resize +2<CR>


"====== Git config
nmap <leader>gs :G<CR>
nnoremap <Leader>gaf :Gw<CR>      


"====== PLUGINS =========
call plug#begin('~/.vim/plugged')
Plug 'vimoxide/vim-cinnabar'
Plug 'fcpg/vim-farout'
Plug 'alx741/vim-stylishask'
Plug 'alx741/vim-hindent'
Plug 'derekwyatt/vim-scala'
Plug 'ghifarit53/tokyonight-vim'
Plug 'justinmk/vim-sneak'
Plug 'machakann/vim-highlightedyank'
Plug 'bling/vim-bufferline'
Plug 'morhetz/gruvbox'
"Plug 'wfxr/minimap.vim'
Plug 'nanotech/jellybeans.vim'
Plug 'rust-lang/rust.vim'
Plug 'racer-rust/vim-racer'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'pangloss/vim-javascript'    " JavaScript support
Plug 'leafgarland/typescript-vim' " TypeScript syntax
Plug 'maxmellon/vim-jsx-pretty'   " JS and JSX syntax
Plug 'HerringtonDarkholme/yats.vim'
Plug 'rhysd/vim-clang-format'
Plug 'ervandew/supertab'
Plug 'neovimhaskell/haskell-vim'
"Plug 'SirVer/ultisnips'
"Plug 'honza/vim-snippets'
Plug 'preservim/tagbar'
Plug 'tpope/vim-surround'
Plug 'racer-rust/vim-racer'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'tpope/vim-fugitive'
Plug 'kien/ctrlp.vim'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'luochen1990/rainbow'
Plug 'jiangmiao/auto-pairs'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'WolfgangMehner/c-support'
Plug 'sheerun/vim-polyglot'
Plug 'blueyed/vim-diminactive'
Plug 'fatih/vim-go'
Plug 'itchyny/lightline.vim'
"Plug 'vim-airline/vim-airline'
"Plug 'vim-airline/vim-airline-themes'
Plug 'chriskempson/base16-vim'
Plug 'joshdick/onedark.vim'
Plug 'sainnhe/sonokai'
Plug 'christoomey/vim-tmux-navigator'
Plug 'phaazon/doom-one.vim', { 'branch': 'fix/icons' }
Plug 'branwright1/salvation-vim'
"Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
" Nvim LSP plugins
"Plug 'neovim/nvim-lspconfig'
"Plug 'nvim-lua/lsp_extensions.nvim'
"Plug 'nvim-lua/completion-nvim'
"Plug 'ryanoasis/vim-devicons'
Plug 'mbbill/undotree'
Plug 'pineapplegiant/spaceduck'
Plug 'franbach/miramare'



Plug 'preservim/nerdcommenter'
call plug#end()
let g:sonokai_style='shusia'

" Invoke Undotree
nnoremap <F5> :UndotreeToggle<CR>

" Rust LSP
"lua require'lspconfig'.rust_analyzer.setup({})
"" Haskell LSP
""lua require'lspconfig'.hls.setup{}
"
"autocmd CursorHold * lua vim.lsp.diagnostic.show_line_diagnostics()
"
"let g:diagnostic_enable_virtual_text = 1
"let g:diagnostic_trimmed_virtual_text = '40'
"" Don't show diagnostics while in insert mode
"let g:diagnostic_insert_delay = 1
"
"" Set updatetime for CursorHold
"" 300ms of no cursor movement to trigger CursorHold
"set updatetime=300
"
"" Goto previous/next diagnostic warning/error
"nnoremap <silent> g[ <cmd>PrevDiagnosticCycle<cr>
"nnoremap <silent> g] <cmd>NextDiagnosticCycle<cr>
"
"set completeopt=menuone,noinsert,noselect
"set shortmess+=c
"
"" Enable type inlay hints
"autocmd CursorMoved,InsertLeave,BufEnter,BufWinEnter,TabEnter,BufWritePost *
"\ lua require'lsp_extensions'.inlay_hints{ prefix = '', highlight = "Comment" }
"
"sign define LspDiagnosticsSignError text=✖ texthl=LspDiagnosticsSignError linehl= numhl=
"
"set signcolumn=yes



"Go setup

let g:go_fmt_command = "goimports"    "Run goimports along gofmt on each save     
let g:go_auto_type_info = 1           "Automatically get signature/type info for object under cursor 

" Rust
let g:rust_recommended_style = 0




set background=dark
set termguicolors

" Creates vertical and horizontal plits with ,+v/h
nnoremap ,v <C-w>v
nnoremap ,h <C-w>s

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'



" Yank highlight
let g:highlightedyank_highlight_duration = 0100

set mouse=a
nmap <C-N> :NERDTreeToggle<CR>
nmap <C-T> :TagbarToggle<CR>
nmap <C-Y> :RustFmt<CR>
" see :h syntastic-loclist-callback
"function! SyntasticCheckHook(errors)
"    if !empty(a:errors)
"        let g:syntastic_loc_list_height = min([len(a:errors), 3])
"    endif
"endfunction

"================== Syntastic Config========================="
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
"
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0
"let g:syntastic_quiet_messages = { "level" : "warnings" }

let g:SuperTabDefaultCompletionType = "<c-n>"




"============ Haskell ===============
let g:haskell_classic_highlighting = 1
let g:haskell_indent_if = 3
let g:haskell_indent_case = 2
let g:haskell_indent_let = 4
let g:haskell_indent_where = 6
let g:haskell_indent_before_where = 2
let g:haskell_indent_after_bare_where = 2
let g:haskell_indent_do = 3
let g:haskell_indent_in = 1
let g:haskell_indent_guard = 2
let g:haskell_indent_case_alternative = 1
let g:cabal_indent_section = 2

let g:hindent_on_save = 0
au FileType haskell nnoremap <silent> <leader>ph :Hindent<CR>
let g:stylishask_on_save = 0
au FileType haskell nnoremap <silent> <leader>ps :Stylishask<CR>
"====================================


set noshowmode



" =================== Colorschemes ==========================

if exists('+termguicolors')
		let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
		let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
		set termguicolors
endif

"colorscheme miramare
colorscheme doom-one
"=================== CoC config   ==========================
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

