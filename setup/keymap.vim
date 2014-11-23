let maplocalleader = ","

"General
nnoremap <Leader>pi :PluginInstall<CR>
"Input
nmap <Enter> O<Esc>
nmap <leader>p <Plug>yankstack_substitute_older_paste
nmap <leader>P <Plug>yankstack_substitute_newer_paste

"Visual Help
" <Ctrl-l> redraws the screen and removes any search highlighting.
nnoremap <silent> <C-l> :nohl<CR><C-l>
" \ig = indent colors
 
"Directory/File Browsing
nmap <C-d> :NERDTreeToggle<CR>
" m = options (a to add new file)"
nnoremap <C-p> :CtrlP<CR>
nnoremap <Left> :wincmd h<CR>
nnoremap <Right> :wincmd l<CR>
nnoremap <Up> :wincmd k<CR>
nnoremap <Down> :wincmd j<CR>
nnoremap <Leader>= :wincmd =<CR>
nnoremap <Leader>- :wincmd _<CR>

"Search
nmap <F3> <Plug>RailsFind
nnoremap <C-Left> <C-O> 
nnoremap <C-Right> <C-i>

"nmap s <Plug>(easymotion-s2)
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
