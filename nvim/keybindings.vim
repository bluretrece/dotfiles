" Map Leader to Space
let mapleader = "\<Space>"
" Lsp Trouble keys
nnoremap <leader>xx <cmd>LspTroubleToggle<cr>
xnoremap <leader>( <ESC>`>a)<ESC>`<i(<ESC>
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

" the following will make an exception just for make
" if we ever start using just spaces, as perhaps we should
autocmd FileType make setlocal noexpandtab

" Changing paste keys just for our own sanity.
noremap p gp
noremap P gP
noremap gp p
noremap gP P



"Easier buffer navigation
"nnoremap <Leader>e :bn<CR>
"nnoremap <Leader>w :bp<CR>
nnoremap <Leader>q :bd!<CR>
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
"Racer PATH for Rust auto completion.
let g:racer_cmd = "/home/luis/.cargo/bin/racer"
let g:racer_experimental_completer = 1

"FZF Keybindings
map <C-F> :FZF<CR>
map <C-B> :Buffers<CR>
map <C-P> :History<CR>
let g:fzf_layout = { 'down': '~20%' }
let g:fzf_preview_window = []

"tabline config
let g:airline#extensions#tabline#enabled = 1 
let g:airline_theme='powerlineish'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'

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

" Invoke Undotree
nnoremap <F5> :UndotreeToggle<CR>

"Go setup
let g:go_fmt_command = "goimports"    "Run goimports along gofmt on each save     
let g:go_auto_type_info = 1           "Automatically get signature/type info for object under cursor 

" Rust
let g:rust_recommended_style = 0

" Creates vertical and horizontal plits with ,+v/h
nnoremap ,v <C-w>v
nnoremap ,h <C-w>s

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" Yank highlight
let g:highlightedyank_highlight_duration = 0100

" Useful keybindings
nmap <C-N> :NERDTreeToggle<CR>
nmap <C-Y> :RustFmt<CR>

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

" use <tab> for trigger completion and navigate to the next complete item
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()

"=================== OCaml ===================
let g:opamshare = substitute(system('opam config var share'),'\n$','','''')
execute "set rtp+=" . g:opamshare . "/merlin/vim"

"=================== IDRIS ==================
let g:idris_indent_if = 3
let g:idris_indent_let = 4
let g:idris_indent_where = 6
let g:idris_indent_do = 3
let g:idris_indent_rewrite = 8

" ========= Window resizing
let g:lens#height_resize_max = 30

" ========= Easymotion
"let g:EasyMotion_do_mapping = 0 " Disable default mappings

"" Jump to anywhere you want with minimal keystrokes, with just one key
"" binding.
"" " `s{char}{label}`
"nmap s <Plug>(easymotion-overwin-f)
"" " or
"" " `s{char}{char}{label}`
"" " Need one more keystroke, but on average, it may be more comfortable.
"nmap s <Plug>(easymotion-overwin-f2)
""
""" Turn on case-insensitive feature
"let g:EasyMotion_smartcase = 1

"" JK motions: Line motions
"map <Leader>j <Plug>(easymotion-j)
"map <Leader>k <Plug>(easymotion-k)

nnoremap <C-n> :NvimTreeToggle<CR>
nnoremap <leader>r :NvimTreeRefresh<CR>
nnoremap <leader>n :NvimTreeFindFile<CR>

nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" LSP code actions
set updatetime=300
nnoremap <silent> gd    <cmd>lua vim.lsp.buf.definition()<CR>
autocmd CursorHold * lua vim.lsp.diagnostic.show_line_diagnostics()
nnoremap <silent> gi    <cmd>lua vim.lsp.buf.implementation()<CR>
nnoremap <silent> gr    <cmd>lua vim.lsp.buf.references()<CR>
nnoremap <silent> gD    <cmd>lua vim.lsp.buf.declaration()<CR>
nnoremap <silent> ge    <cmd>lua vim.lsp.diagnostic.set_loclist()<CR>
nnoremap <silent> K     <cmd>lua vim.lsp.buf.hover()<CR>
nnoremap <silent> <leader>f    <cmd>lua vim.lsp.buf.formatting()<CR>
nnoremap <silent> <leader>rn    <cmd>lua vim.lsp.buf.rename()<CR>

nnoremap <silent> <leader>a <cmd>lua vim.lsp.buf.code_action()<CR>
xmap <silent> <leader>a <cmd>lua vim.lsp.buf.range_code_action()<CR>


"Vista defaults
let g:vista_default_executive = 'nvim_lsp'
let g:vista_sidebar_width = 8
let g:vista_icon_indent = ["╰─▸ ", "├─▸ "]
nmap <C-T> :Vista<CR>
nnoremap <leader>t :Vista!<CR>

" Dashboard
let g:dashboard_default_executive ='fzf'
let g:dashboard_fzf_float = 0

let g:dashboard_custom_header =<< trim END
=================     ===============     ===============   ========  ========
\\ . . . . . . .\\   //. . . . . . .\\   //. . . . . . .\\  \\. . .\\// . . //
||. . ._____. . .|| ||. . ._____. . .|| ||. . ._____. . .|| || . . .\/ . . .||
|| . .||   ||. . || || . .||   ||. . || || . .||   ||. . || ||. . . . . . . ||
||. . ||   || . .|| ||. . ||   || . .|| ||. . ||   || . .|| || . | . . . . .||
|| . .||   ||. _-|| ||-_ .||   ||. . || || . .||   ||. _-|| ||-_.|\ . . . . ||
||. . ||   ||-'  || ||  `-||   || . .|| ||. . ||   ||-'  || ||  `|\_ . .|. .||
|| . _||   ||    || ||    ||   ||_ . || || . _||   ||    || ||   |\ `-_/| . ||
||_-' ||  .|/    || ||    \|.  || `-_|| ||_-' ||  .|/    || ||   | \  / |-_.||
||    ||_-'      || ||      `-_||    || ||    ||_-'      || ||   | \  / |  `||
||    `'         || ||         `'    || ||    `'         || ||   | \  / |   ||
||            .===' `===.         .==='.`===.         .===' /==. |  \/  |   ||
||         .=='   \_|-_ `===. .==='   _|_   `===. .===' _-|/   `==  \/  |   ||
||      .=='    _-'    `-_  `='    _-'   `-_    `='  _-'   `-_  /|  \/  |   ||
||   .=='    _-'          '-__\._-'         '-_./__-'         `' |. /|  |   ||
||.=='    _-'                                                     `' |  /==.||
=='    _-'                        N E O V I M                         \/   `==
\   _-'                                                                `-_   /
 `''                                                                      ``'
END



let g:fzf_layout = { 'down': '~20%' }
let g:fzf_preview_window = []


" let bufferline = get(g:, 'bufferline', {})

" " Enable/disable animations
" let bufferline.animation = v:false

nnoremap <leader>z viw<esc>a)<esc>hbi(<esc>lel


"Moves Blocks of code in visual mode 
xnoremap K :move '<-2<CR>gv-gv
xnoremap J :move '>+1<CR>gv-gv 

"Identation with < and >
vnoremap < <gv
vnoremap > >gv


" Follow Rust code style rules
au Filetype rust source ~/.config/nvim/scripts/spacetab.vim

" Telescope
nnoremap <Leader>fo :lua require'telescope.builtin'.oldfiles(require('telescope.themes').get_ivy({ winblend = 6, layout_config = { height = 14 } }))<cr>
nnoremap <Leader>ff :lua require'telescope.builtin'.file_browser(require('telescope.themes').get_ivy({ winblend = 6} ))<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>

" Sneak
let g:sneak#s_next = 1

" Vanila autopairs
" inoremap " ""<left>
" inoremap ' ''<left>
" inoremap ( ()<left>
" inoremap [ []<left>
" inoremap { {}<left>
" inoremap {<CR> {<CR>}<ESC>O
" inoremap {;<CR> {<CR>};<ESC>O
