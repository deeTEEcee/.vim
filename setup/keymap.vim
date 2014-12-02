let maplocalleader = ","

""""""""General
nnoremap <Leader>pi :PluginInstall<CR>

"Git (Use :Git <command> and we will temporarily go back to the terminal. Some
"special commands just aren't helpful in git fugitive)
nnoremap <Leader>gl :Git log -p %<CR>
nnoremap <Leader>gb :Gblame<CR>
"Sessions
nnoremap <Leader>ss :SaveSession dev<CR>
nnoremap <Leader>sst :SaveSession template<CR>
nnoremap <Leader>sd :DeleteSession dev<CR>
nnoremap <Leader>sdt :DeleteSession template<CR>
nnoremap <Leader>so :OpenSession dev<CR>
nnoremap <Leader>sot :OpenSession template<CR>

""""""""Input
nmap <Enter> O<Esc>
nmap <leader>p <Plug>yankstack_substitute_older_paste
nmap <leader>P <Plug>yankstack_substitute_newer_paste

"""""""Visual Help
" <Ctrl-l> redraws the screen and removes any search highlighting.
nnoremap <silent> <C-l> :nohl<CR><C-l>
" \ig = indent colors

""" Tabber Plugin
nnoremap <silent> <C-t>            :999TabberNew<CR>
nnoremap <silent> <Leader><Leader> :TabberSelectLastActive<CR>
nnoremap <silent> <Leader>tn       :TabberNew<CR>
nnoremap <silent> <Leader>tm       :TabberMove<CR>
nnoremap <silent> <Leader>tc       :tabclose<CR>
nnoremap <silent> <Leader>tl       :TabberShiftLeft<CR>
nnoremap <silent> <Leader>tr       :TabberShiftRight<CR>
nnoremap <silent> <Leader>ts       :TabberSwap<CR>
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
nmap <C-d> :NERDTreeToggle<CR>
" m = options (a to add new file)"
nnoremap <C-p> :CtrlP<CR>
nnoremap <Left> :wincmd h<CR>
nnoremap <Right> :wincmd l<CR>
nnoremap <Up> :wincmd k<CR>
nnoremap <Down> :wincmd j<CR>
nnoremap <Leader>= :wincmd =<CR>
nnoremap <Leader>- :wincmd _<CR>

""""""""Search
nmap <F3> <Plug>RailsFind
nnoremap <C-Left> <C-O> 
nnoremap <C-Right> <C-i>

nmap s <Plug>(easymotion-s2)
nmap t <Plug>(easymotion-t2)

function! ToggleErrors()
    let old_last_winnr = winnr('$')
    lclose
    if old_last_winnr == winnr('$')
        " Nothing was closed, open syntastic error location panel
        Errors
    endif
endfunction
nnoremap <silent> <Leader>e :<C-u>call ToggleErrors()<CR>
" TODO: add syntastic check hotkey maybe
