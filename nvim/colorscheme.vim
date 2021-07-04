if exists('+termguicolors')
		let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
		let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
		set termguicolors
endif

let g:tokyonight_style = "storm"
let g:tokyonight_italic_keywords = 0
let g:tokyonight_italic_comments = 0



let g:neon_italic_comment = 0
" let g:neon_style = "dark"

let g:material_style = 'darker'
let g:material_italic_comments = 0 
let g:material_flat_ui = 1
let g:material_italic_functions = 0
let g:material_italic_keywords = 0
let g:material_italic_variables = 0
colorscheme material
" colorscheme tokyonight
" colorscheme neon
let g:oceanic_material_allow_bold = 0
