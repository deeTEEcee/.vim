"""""""" General Settings
"""On Startup
if filereadable('.vimrc-project')
  source .vimrc-project
endif
set autoread
"call ctrlp_bdelete#init()
let g:ruby_path = system('rvm current')

""" On Autoload
let g:indent_guides_enable_on_vim_startup = 0

runtime macros/matchit.vim

let g:agprg="ag -Q --nogroup --nocolor --column"

""" Navigating
let g:ctrlp_regexp = 1

""" Coding
set mouse=a
set clipboard=unnamed
set smartindent
"filetype indent on
filetype off
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab

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
let g:airline_inactive_collapse=1

"Sessions - we want to autosave and autoload always to dev
"let g:session_autoload = 'no'
"let g:session_default_to_last = 0
"let g:session_autosave = 'yes'
"let g:session_default_name = 'dev'

"Ruby
"set hlsearch
"set omnifunc=rubycomplete#Complete
"let g:rubycomplete_buffer_loading = 1
"let g:rubycomplete_classes_in_global=1
"let g:rubycomplete_rails = 1



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

"Rails
"let g:rspec_command = "Dispatch foreman run rspec {spec}"
