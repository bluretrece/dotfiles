if exists('+termguicolors')
		let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
		let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
		set termguicolors
endif
let g:tokyonight_style = "night"
let g:tokyonight_italic_keywords = 0
let g:tokyonight_italic_comments = 0
colorscheme tokyonight
" colorscheme base16-irblack
" colorscheme doom-one
" colorscheme oceanic_material
let g:moonflyItalics = 0
let g:oceanic_material_allow_bold = 0

