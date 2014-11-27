"General VIM Settings
set mouse=a
set clipboard=unnamed

" Plugin Settings
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#tab_nr_type = 1 " tab number

set hlsearch
set omnifunc=rubycomplete#Complete
let g:rubycomplete_buffer_loading = 1
let g:rubycomplete_classes_in_global=1
let g:rubycomplete_rails = 1


""" Airlines
set t_Co=256
set laststatus=2
set encoding=utf-8

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
  \ 'dir': '\vtmp|vendor|bin|public',
  \ 'file': '\v\.(exe|so|dll|markdown)$',
  \ }

set smartindent
set tabstop=2
set shiftwidth=2
set expandtab

set number
syntax enable
set background=light
let g:solarized_termcolors = 256  " New line!!
colorscheme solarized
let g:netrw_liststyle=3

if !argc()
 " autocmd VimEnter * Unite -no-split -start-insert file_rec/async
endif

