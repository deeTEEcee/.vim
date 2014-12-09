autocmd FileType ruby call s:ruby_abbrev()
function! s:ruby_abbrev()
  iabbrev d! binding.pry
endfunction

autocmd FileType eruby call s:eruby_abbrev()
function! s:eruby_abbrev()
  iabbrev d! <% binding.pry %>
endfunction
