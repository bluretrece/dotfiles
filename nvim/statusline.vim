" lua require('plugins.evil-statusline')
lua require('plugins.evilline')
"Spaceline tweaks
let g:spaceline_colorscheme = 'space'
let g:spaceline_seperate_style = 'slant-cons'
let g:spaceline_git_branch_icon = ' '
let g:spaceline_custom_vim_status = {"n": "NORMAL ❖  ","V":"VISUAL ❖ ","v":"🅥 ","\<C-v>": "V-BLOCK ❖ ","i":"INSERT ❖ ","R":"REPLACE ❖ ","s":"🅢 ","t":"🅣 ","c":"λ ","!":"SE"}
let g:spaceline_diagnostic_warnsign = ' '
let g:spaceline_diagnostic_errorsign = ' '
let g:spaceline_function_icon = 'λ'
let g:airline_section_b = ''
let g:airline_section_error = ''
let g:airline_section_warning = ''

"let g:spaceline_custom_vim_status = {"n": "NORMAL ❖  ","V":"VISUAL  ","v":"🅥 ","\<C-v>": "V-BLOCK  ","i":"INSERT  ","R":"REPLACE  ","s":"🅢 ","t":"🅣 ","c":"🅒 ","!":"SE"}

let g:lightline.separator = {
	\   'left': '', 'right': ''
  \}
let g:lightline.subseparator = {
	\   'left': '', 'right': '' 
  \}
