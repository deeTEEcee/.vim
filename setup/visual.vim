syntax enable
set background=light
let g:solarized_termcolors = 256  " New line!!
colorscheme solarized
set number
let g:netrw_liststyle=3
let g:indent_guides_default_mapping = 1
set splitbelow
set splitright
let g:tabber_predefined_labels = { 1: 'Models', 2: 'Views', 3: 'Controllers', 4: 'Routes', 5: 'Translations', 6: 'Helpers', 7: 'Testing' } " TODO: only if this is a rails project


highlight erubyRailsMethod ctermfg=160
