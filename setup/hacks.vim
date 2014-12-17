"Personally hacked items

" paste mode hack, i have no idea
let &t_SI .= "\<Esc>[?2004h"
let &t_EI .= "\<Esc>[?2004l"

inoremap <special> <expr> <Esc>[200~ XTermPasteBegin()

function! XTermPasteBegin()
  set pastetoggle=<Esc>[201~
  set paste
  return ""
endfunction

function! ToggleErrors()
    let old_last_winnr = winnr('$')
    lclose
    if old_last_winnr == winnr('$')
        " Nothing was closed, open syntastic error location panel
        Errors
    endif
endfunction
nnoremap <silent> <Leader>e :<C-u>call ToggleErrors()<CR>

" TODO: add <Leader>F12 for the the stack that this links to
map <F12> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<' . synIDattr(synID(line("."),col("."),0),"name") . "> lo<" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">" . " FG:" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"fg#")<CR>

function QReplace(arg1, arg2)
  execute 'Qargs | argdo %s/' . a:arg1 . '/' . a:arg2 . '/gc | update'
endfunction 
command -nargs=* Qr :call QReplace(<f-args>)

