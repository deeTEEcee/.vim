"""""""" General Settings
"""On Startup
if filereadable('.vimrc-project')
  source .vimrc-project
endif

""" On Autoload
let g:indent_guides_enable_on_vim_startup = 0

runtime macros/matchit.vim

let g:agprg="ag -Q --nogroup --nocolor --column"

""" Navigating
let g:ctrlp_regexp = 1
let g:bufferline_echo = 0

""" Coding
set mouse=a
set clipboard=unnamed
set smartindent
filetype indent on
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab


""" Visual
set number
syntax enable
set background=light
let g:solarized_termcolors = 256  " New line!!
colorscheme solarized
let g:netrw_liststyle=3
let g:indent_guides_default_mapping = 1
set splitbelow
set splitright
let g:tabber_predefined_labels = { 1: 'Models', 2: 'Views', 3: 'Controllers', 4: 'Routes', 5: 'Translations', 6: 'Helpers' 7: 'Testing' } " TODO: only if this is a rails project



""""""""" Plugin Settings
"Enable tabline
set guioptions-=e
set tabline=%!tabber#TabLine()
"Airlines
set t_Co=256
set laststatus=2
set encoding=utf-8
let g:airline#extensions#tabline#enabled = 0
let g:airline#extensions#tabline#tab_nr_type = 1 " tab number

"Sessions
let g:session_autoload = 'yes'
let g:session_default_to_last = 1
let g:session_autosave = 'no'

"Ruby

set hlsearch
set omnifunc=rubycomplete#Complete
let g:rubycomplete_buffer_loading = 1
let g:rubycomplete_classes_in_global=1
let g:rubycomplete_rails = 1



"let NERDTreeDirArrows=0
"let g:syntastic_ruby_checkers = ['mri', 'ruby']
let g:syntastic_quiet_messages = { "type": "style" }
let g:syntastic_check_on_open = 1

let g:ctrlp_clear_cache_on_exit = 0
let g:ctrlp_match_window = 'max:30'
let g:ctrlp_working_path_mode = ''
"set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux

"let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_custom_ignore = {
  \ 'hidden_dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'dir': '\vtmp|public',
  \ 'file': '\v\.(exe|so|dll|markdown)$',
  \ }



if !argc()
 " autocmd VimEnter * Unite -no-split -start-insert file_rec/async
endif

