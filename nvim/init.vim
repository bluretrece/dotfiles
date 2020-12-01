"  ____ ____ ____ ____
" ||l |||u |||i |||s ||
" ||__|||__|||__|||__||
" |/__\|/__\|/__\|/__\|
"
" Luis Vegas's .vimrc

"source vim config file with leader + 1
nnoremap <silent><leader>1 :source ~/.vimrc \| :PlugInstall<CR>

"Bind :w to save with ctrl+s
:nmap <c-s> :w<CR>
:imap <c-s> <Esc>:w<CR>a

inoremap <C-e> <C-o>A



"Easier buffer navigation
map <C-w> :bprevious<CR>
map <C-e> :bnext<CR>
map <C-q> :bd<CR>

"Sends any deleted text to the black hole register. 
nnoremap d "_d

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
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'


" Use ctrl-[hjkl] to select the active split!
nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>

"Clang formating
nnoremap <Leader>f :<C-u>ClangFormat<CR>

"Window resizing
noremap <silent> <C-S-Up> :resize -5<CR>
noremap <silent> <C-S-Down> :resize +5<CR>
noremap <silent> <C-S-Left> :vertical resize -5<CR>
noremap <silent> <C-S-Right> :vertical resize +5<CR>


"====== Git config
nmap <leader>gs :G<CR>
nnoremap <Leader>gaf :Gw<CR>      


"====== PLUGINS =========
call plug#begin('~/.vim/plugged')
Plug 'vim-syntastic/syntastic'
Plug 'vimoxide/vim-cinnabar'
Plug 'alx741/vim-stylishask'
Plug 'fcpg/vim-farout'
Plug 'derekwyatt/vim-scala'
"Plug 'voldikss/vim-floaterm'
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
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'preservim/tagbar'
Plug 'tpope/vim-surround'
Plug 'racer-rust/vim-racer'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'tpope/vim-fugitive'
Plug 'kien/ctrlp.vim'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'embark-theme/vim', { 'as': 'embark' }
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'luochen1990/rainbow'
Plug 'jiangmiao/auto-pairs'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'johannesthyssen/vim-signit'
Plug 'WolfgangMehner/c-support'
Plug 'sheerun/vim-polyglot'
Plug 'blueyed/vim-diminactive'
Plug 'fatih/vim-go'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'chriskempson/base16-vim'
Plug 'joshdick/onedark.vim'
Plug 'sainnhe/sonokai'
"Plug 'nvim-treesitter/nvim-treesitter'
"Plug 'ap/vim-buftabline'
Plug 'christoomey/vim-tmux-navigator'


call plug#end()

let g:sonokai_style='shusia'


"Go setup

let g:go_fmt_command = "goimports"    "Run goimports along gofmt on each save     
let g:go_auto_type_info = 1           "Automatically get signature/type info for object under cursor 

set background=dark
"colorscheme base16-gruvbox-dark-hard
set termguicolors
let g:tokyonight_style = 'night'
nnoremap ,v <C-w>v
nnoremap ,h <C-w>s

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:airline_theme='badwolf'
let g:airline#extensions#tabline#enabled = 1



" Yank highlight
let g:highlightedyank_highlight_duration = 0300

set mouse=a
nmap <C-N> :NERDTreeToggle<CR>
nmap <C-T> :TagbarToggle<CR>
nmap <C-Y> :RustFmt<CR>
" see :h syntastic-loclist-callback
function! SyntasticCheckHook(errors)
    if !empty(a:errors)
        let g:syntastic_loc_list_height = min([len(a:errors), 3])
    endif
endfunction

"================== Syntastic Config========================="
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_quiet_messages = { "level" : "warnings" }

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


set noshowmode



" =================== Colorschemes ==========================
colorscheme sonokai

"colorscheme onedark
" =================== CoC config   ==========================
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
