Vim�UnDo� ��I>z�i�C���P�V'�9��N=���֓   �                                   `��    _�                             ����                                                                                                                                                                                                                                                                                                                                                             `�    �                   �               5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             `�    �                  5�_�                    3        ����                                                                                                                                                                                                                                                                                                                            5           3           V        `��     �   2   3          	syntax on   filetype plugin indent on    5�_�                    c        ����                                                                                                                                                                                                                                                                                                                            3           3           V        `�?    �   b               5�_�                   d        ����                                                                                                                                                                                                                                                                                                                            3           3           V        `��    �   d   �   f    �   d   e   f    5�_�      	              ^        ����                                                                                                                                                                                                                                                                                                                            3           3           V        `��    �   ]   ^           5�_�      
           	   =        ����                                                                                                                                                                                                                                                                                                                            3           3           V        `��     �   <   =           5�_�   	              
   0        ����                                                                                                                                                                                                                                                                                                                            3           3           V        `��     �   /   0           5�_�   
                         ����                                                                                                                                                                                                                                                                                                                            2           2           V        `��    �                 5�_�                    !        ����                                                                                                                                                                                                                                                                                                                            1           1           V        `��     �       !           5�_�                    _        ����                                                                                                                                                                                                                                                                                                                            0           0           V        `��     �   ^   _           5�_�                    �        ����                                                                                                                                                                                                                                                                                                                            0           0           V        `��     �   �   �           5�_�                    �        ����                                                                                                                                                                                                                                                                                                                            0           0           V        `��    �   �   �           5�_�                    �        ����                                                                                                                                                                                                                                                                                                                            0           0           V        `��   
 �   �   �           5�_�                    �        ����                                                                                                                                                                                                                                                                                                                            �           �           V        `�e    �   �   �              &lua require('plugins.evil-statusline')   "   "   "Spaceline tweaks   %let g:spaceline_colorscheme = 'space'   -let g:spaceline_seperate_style = 'slant-cons'   (let g:spaceline_git_branch_icon = ' '   �let g:spaceline_custom_vim_status = {"n": "NORMAL ❖  ","V":"VISUAL ❖ ","v":"🅥 ","\<C-v>": "V-BLOCK ❖ ","i":"INSERT ❖ ","R":"REPLACE ❖ ","s":"🅢 ","t":"🅣 ","c":"λ ","!":"SE"}   ,let g:spaceline_diagnostic_warnsign = ' '   -let g:spaceline_diagnostic_errorsign = ' '   $let g:spaceline_function_icon = 'λ'   let g:airline_section_b = ''    let g:airline_section_error = ''   "let g:airline_section_warning = ''       �"let g:spaceline_custom_vim_status = {"n": "NORMAL ❖  ","V":"VISUAL  ","v":"🅥 ","\<C-v>": "V-BLOCK  ","i":"INSERT  ","R":"REPLACE  ","s":"🅢 ","t":"🅣 ","c":"🅒 ","!":"SE"}       let g:lightline.separator = {   "	\   'left': '', 'right': ''     \}    let g:lightline.subseparator = {   #	\   'left': '', 'right': ''      \}    5�_�                    �        ����                                                                                                                                                                                                                                                                                                                            �           �           V        `�f    �   �   �              
lua << EOF       'require'nvim-treesitter.configs'.setup{       ensure_installed = "all",       highlight = {   	enable = true,       },       indent = {   	enabled = false,       },   }       EOF    5�_�                    �        ����                                                                                                                                                                                                                                                                                                                            �           �           V        `��    �   �   �           5�_�                    w        ����                                                                                                                                                                                                                                                                                                                            �           �           V        `��    �   v   w           5�_�                     w        ����                                                                                                                                                                                                                                                                                                                            �           �           V        `��    �   v   y   �       �   v   x   �    5�_�                   f        ����                                                                                                                                                                                                                                                                                                                            3           3           V        `�@     �   f   g        �   f   g       w       " Invoke Undotree   !nnoremap <F5> :UndotreeToggle<CR>       " MiniMap toggle   nmap <C-M> :MinimapToggle<CR>   let g:minimap_auto_start = 0       	"Go setup       Rlet g:go_fmt_command = "goimports"    "Run goimports along gofmt on each save        elet g:go_auto_type_info = 1           "Automatically get signature/type info for object under cursor        " Rust    let g:rust_recommended_style = 0       2" Creates vertical and horizontal plits with ,+v/h   nnoremap ,v <C-w>v   nnoremap ,h <C-w>s       let g:ctrlp_map = '<c-p>'   let g:ctrlp_cmd = 'CtrlP'       " Yank highlight   /let g:highlightedyank_highlight_duration = 0100       nmap <C-N> :NERDTreeToggle<CR>   nmap <C-T> :TagbarToggle<CR>   nmap <C-Y> :RustFmt<CR>       -let g:SuperTabDefaultCompletionType = "<c-n>"       %"============ Haskell ===============   &let g:haskell_classic_highlighting = 1   let g:haskell_indent_if = 3   let g:haskell_indent_case = 2   let g:haskell_indent_let = 4   let g:haskell_indent_where = 6   %let g:haskell_indent_before_where = 2   )let g:haskell_indent_after_bare_where = 2   let g:haskell_indent_do = 3   let g:haskell_indent_in = 1   let g:haskell_indent_guard = 2   )let g:haskell_indent_case_alternative = 1   let g:cabal_indent_section = 2       let g:hindent_on_save = 0   =au FileType haskell nnoremap <silent> <leader>ph :Hindent<CR>   let g:stylishask_on_save = 0   @au FileType haskell nnoremap <silent> <leader>ps :Stylishask<CR>       <"=================== CoC config   ==========================   'nmap <silent> gd <Plug>(coc-definition)   ,nmap <silent> gy <Plug>(coc-type-definition)   +nmap <silent> gi <Plug>(coc-implementation)   'nmap <silent> gr <Plug>(coc-references)       I" use <tab> for trigger completion and navigate to the next complete item   $function! s:check_back_space() abort     let col = col('.') - 1   /  return !col || getline('.')[col - 1]  =~ '\s'   endfunction       inoremap <silent><expr> <Tab>   !      \ pumvisible() ? "\<C-n>" :   ,      \ <SID>check_back_space() ? "\<Tab>" :         \ coc#refresh()       ."=================== OCaml ===================   Klet g:opamshare = substitute(system('opam config var share'),'\n$','','''')   1execute "set rtp+=" . g:opamshare . "/merlin/vim"       -"=================== IDRIS ==================   let g:idris_indent_if = 3   let g:idris_indent_let = 4   let g:idris_indent_where = 6   let g:idris_indent_do = 3   let g:idris_indent_rewrite = 8               
lua << EOF       'require'nvim-treesitter.configs'.setup{       ensure_installed = "all",       highlight = {   	enable = true,       },       indent = {   	enabled = false,       },   }       EOF           &lua require('plugins.evil-statusline')   "   "   "Spaceline tweaks   %let g:spaceline_colorscheme = 'space'   -let g:spaceline_seperate_style = 'slant-cons'   (let g:spaceline_git_branch_icon = ' '   �let g:spaceline_custom_vim_status = {"n": "NORMAL ❖  ","V":"VISUAL ❖ ","v":"🅥 ","\<C-v>": "V-BLOCK ❖ ","i":"INSERT ❖ ","R":"REPLACE ❖ ","s":"🅢 ","t":"🅣 ","c":"λ ","!":"SE"}   ,let g:spaceline_diagnostic_warnsign = ' '   -let g:spaceline_diagnostic_errorsign = ' '   $let g:spaceline_function_icon = 'λ'   let g:airline_section_b = ''    let g:airline_section_error = ''   "let g:airline_section_warning = ''       �"let g:spaceline_custom_vim_status = {"n": "NORMAL ❖  ","V":"VISUAL  ","v":"🅥 ","\<C-v>": "V-BLOCK  ","i":"INSERT  ","R":"REPLACE  ","s":"🅢 ","t":"🅣 ","c":"🅒 ","!":"SE"}       let g:lightline.separator = {   "	\   'left': '', 'right': ''     \}    let g:lightline.subseparator = {   #	\   'left': '', 'right': ''      \}5�_�                     g        ����                                                                                                                                                                                                                                                                                                                            3           3           V        `�A     �   g   h   �    �   g   h   �   w       " Invoke Undotree   !nnoremap <F5> :UndotreeToggle<CR>       " MiniMap toggle   nmap <C-M> :MinimapToggle<CR>   let g:minimap_auto_start = 0       	"Go setup       Rlet g:go_fmt_command = "goimports"    "Run goimports along gofmt on each save        elet g:go_auto_type_info = 1           "Automatically get signature/type info for object under cursor        " Rust    let g:rust_recommended_style = 0       2" Creates vertical and horizontal plits with ,+v/h   nnoremap ,v <C-w>v   nnoremap ,h <C-w>s       let g:ctrlp_map = '<c-p>'   let g:ctrlp_cmd = 'CtrlP'       " Yank highlight   /let g:highlightedyank_highlight_duration = 0100       nmap <C-N> :NERDTreeToggle<CR>   nmap <C-T> :TagbarToggle<CR>   nmap <C-Y> :RustFmt<CR>       -let g:SuperTabDefaultCompletionType = "<c-n>"       %"============ Haskell ===============   &let g:haskell_classic_highlighting = 1   let g:haskell_indent_if = 3   let g:haskell_indent_case = 2   let g:haskell_indent_let = 4   let g:haskell_indent_where = 6   %let g:haskell_indent_before_where = 2   )let g:haskell_indent_after_bare_where = 2   let g:haskell_indent_do = 3   let g:haskell_indent_in = 1   let g:haskell_indent_guard = 2   )let g:haskell_indent_case_alternative = 1   let g:cabal_indent_section = 2       let g:hindent_on_save = 0   =au FileType haskell nnoremap <silent> <leader>ph :Hindent<CR>   let g:stylishask_on_save = 0   @au FileType haskell nnoremap <silent> <leader>ps :Stylishask<CR>       <"=================== CoC config   ==========================   'nmap <silent> gd <Plug>(coc-definition)   ,nmap <silent> gy <Plug>(coc-type-definition)   +nmap <silent> gi <Plug>(coc-implementation)   'nmap <silent> gr <Plug>(coc-references)       I" use <tab> for trigger completion and navigate to the next complete item   $function! s:check_back_space() abort     let col = col('.') - 1   /  return !col || getline('.')[col - 1]  =~ '\s'   endfunction       inoremap <silent><expr> <Tab>   !      \ pumvisible() ? "\<C-n>" :   ,      \ <SID>check_back_space() ? "\<Tab>" :         \ coc#refresh()       ."=================== OCaml ===================   Klet g:opamshare = substitute(system('opam config var share'),'\n$','','''')   1execute "set rtp+=" . g:opamshare . "/merlin/vim"       -"=================== IDRIS ==================   let g:idris_indent_if = 3   let g:idris_indent_let = 4   let g:idris_indent_where = 6   let g:idris_indent_do = 3   let g:idris_indent_rewrite = 8               
lua << EOF       'require'nvim-treesitter.configs'.setup{       ensure_installed = "all",       highlight = {   	enable = true,       },       indent = {   	enabled = false,       },   }       EOF           &lua require('plugins.evil-statusline')   "   "   "Spaceline tweaks   %let g:spaceline_colorscheme = 'space'   -let g:spaceline_seperate_style = 'slant-cons'   (let g:spaceline_git_branch_icon = ' '   �let g:spaceline_custom_vim_status = {"n": "NORMAL ❖  ","V":"VISUAL ❖ ","v":"🅥 ","\<C-v>": "V-BLOCK ❖ ","i":"INSERT ❖ ","R":"REPLACE ❖ ","s":"🅢 ","t":"🅣 ","c":"λ ","!":"SE"}   ,let g:spaceline_diagnostic_warnsign = ' '   -let g:spaceline_diagnostic_errorsign = ' '   $let g:spaceline_function_icon = 'λ'   let g:airline_section_b = ''    let g:airline_section_error = ''   "let g:airline_section_warning = ''       �"let g:spaceline_custom_vim_status = {"n": "NORMAL ❖  ","V":"VISUAL  ","v":"🅥 ","\<C-v>": "V-BLOCK  ","i":"INSERT  ","R":"REPLACE  ","s":"🅢 ","t":"🅣 ","c":"🅒 ","!":"SE"}       let g:lightline.separator = {   "	\   'left': '', 'right': ''     \}    let g:lightline.subseparator = {   #	\   'left': '', 'right': ''      \}5��