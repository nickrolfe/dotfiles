" Language:     C

set makeprg=build.bat

function! s:build()
    silent make!
    cwindow
endfunction

command! Build call s:build()
nnoremap <silent><leader>b :Build<cr>
