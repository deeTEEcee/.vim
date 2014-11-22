"""Airlne"""
set t_Co=256
set laststatus=2
set encoding=utf-8
"set ttimeoutlen=50

"set guifont=Inconsolata\ for\ Powerline:h15
"let g:Powerline_symbols = 'fancy'
"set encoding=utf-8
"set t_Co=256
"set fillchars+=stl:\ ,stlnc:\
"set term=xterm-256color
"set termencoding=utf-8
"if has("gui_running")
     "let s:uname = system("uname")
        "if s:uname == "Darwin\n"
                "set guifont=Inconsolata\ for\ Powerline:h15
                   "endif
                 "endif


"let g:syntastic_ruby_checkers = ['mri', 'ruby']

let g:syntastic_check_on_open = 1

let g:ctrlp_clear_cache_on_exit = 0
let g:ctrlp_match_window = 'max:30'
let g:ctrlp_working_path_mode = 'c'
"set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux

"let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_custom_ignore = {
  \ 'hidden_dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'dir': '\vtmp|vendor|bin|public',
  \ 'file': '\v\.(exe|so|dll|markdown)$',
  \ }

set smartindent
set tabstop=2
set shiftwidth=2
set expandtab

set number
syntax enable
set background=dark
let g:solarized_termcolors = 256  " New line!!
colorscheme solarized
let g:netrw_liststyle=3

"call unite#filters#matcher_default#use(['matcher_fuzzy'])
"call unite#custom#source('file_rec/async', 'ignore_pattern', '.idea\|fonts\|images\|stylesheets')


if !argc()
 " autocmd VimEnter * Unite -no-split -start-insert file_rec/async
endif

