""""""""General
nnoremap <Leader>pi :PluginInstall<CR>
"nnoremap <leader>ev :vsplit $MYVIMRC<cr> and also :source it
"
""" Some of this taken from vim-easyclip (they rebind it in this way but i dont want to be forced to use a new plugin for some small changes)

nnoremap c "_c
vnoremap c "_c
nnoremap cc "_S
vnoremap cc "_S 
nnoremap d "_d
vnoremap d "_d
vnoremap y ygv 
nnoremap <C-d> dd

nnoremap <Leader>q :qa<CR>
nnoremap <Leader>w :wa<CR>
"nmap ,cp :let @*=expand("%:p")<CR>
nmap ,cp :let @*=expand("%:p:h")<CR>
nnoremap <Leader><Leader>t :!ctags -R --languages=ruby --exclude=db<CR>
"nnoremap <Leader><Leader>tj :!ctags -R --languages=javascript<CR>


"Refresh command
nnoremap <Leader>r :checktime<CR>
"nnoremap <Leader>rc :so $MYVIMRC<CR>

"Git (Use :Git <command> and we will temporarily go back to the terminal. Some
"special commands just aren't helpful in git fugitive)
nnoremap <Leader>gl :Git log -p %<CR>
nnoremap <Leader>gb :Gblame<CR>

nnoremap <Leader>ss :SaveSession dev<CR>
nnoremap <Leader>srs :SaveSession g-rails<CR>
nnoremap <Leader>sd :DeleteSession dev<CR>
nnoremap <Leader>srd :DeleteSession g-rails<CR>
nnoremap <Leader>so :OpenSession dev<CR>
nnoremap <Leader>sro :OpenSession g-rails<CR>

""""""""Input
nmap <C-Enter> O<Esc>
nmap <leader>p <Plug>yankstack_substitute_older_paste
nmap <leader>P <Plug>yankstack_substitute_newer_paste

"""""""Visual Help
" <Ctrl-l> redraws the screen and removes any search highlighting.
nnoremap <silent> <C-l> :nohl<CR><C-l>
" add a command for ':botright cwindow' for quickfix
" \ig = indent colors

""" Tabs
nnoremap <Leader>tm :Tabmerge 

nnoremap <silent> <Leader>tn            :tabnew<CR>
nnoremap <silent> <Leader><Leader> :TabberSelectLastActive<CR>
nnoremap <silent> <C-t>       :tabnew<CR>
nnoremap <silent> <Leader>tc       :tabclose<CR>
nnoremap <silent> <Leader>1        :tabnext 1<CR>
nnoremap <silent> <Leader>2        :tabnext 2<CR>
nnoremap <silent> <Leader>3        :tabnext 3<CR>
nnoremap <silent> <Leader>4        :tabnext 4<CR>
nnoremap <silent> <Leader>5        :tabnext 5<CR>
nnoremap <silent> <Leader>6        :tabnext 6<CR>
nnoremap <silent> <Leader>7        :tabnext 7<CR>
nnoremap <silent> <Leader>8        :tabnext 8<CR>
nnoremap <silent> <Leader>9        :tabnext 9<CR>
 
""""""""Directory/File Browsing
nmap <F1> :NERDTreeToggle<CR>
" m = options (a to add new file)"
nnoremap <C-p> :CtrlP<CR>
nnoremap .<C-p> :CtrlPMRU<CR>
nnoremap .b :CtrlPBuffer<CR>

nnoremap h :wincmd h<CR>
nnoremap l :wincmd l<CR>
nnoremap k :wincmd k<CR>
nnoremap j :wincmd j<CR>
nnoremap <Leader>= :wincmd =<CR>
nnoremap <Leader>- :wincmd _<CR>

nnoremap <C-v> <C-w>t<C-w>H<CR>
nnoremap <C-h> <C-w>t<C-w>K<CR>

""""""""Navigation
nmap <Leader><F3> <Plug>RailsFind
nnoremap <F3> <C-]>
nnoremap <C-Left> <C-O> 
nnoremap <C-Right> <C-i>

nmap <Space> <Plug>(easymotion-s2)
"nmap t <Plug>(easymotion-t2)

""Rails
map <Leader>rt :call RunCurrentSpecFile()<CR>
"map <Leader>s :call RunNearestSpec()<CR>
"map <Leader>l :call RunLastSpec()<CR>
"map <Leader>a :call RunAllSpecs()<CR>

"Remappings (TODO: if there are any in general config, move em here as well)
let g:ag_results_mapping_replacements = {
  \ 'horizontal_split': 's'
\}
