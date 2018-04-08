" Language:     C

if has('win32') || has('win64')
    set makeprg=build.bat
else
    set makeprg=./build.sh
end

function! s:build()
    silent make!
    cwindow
endfunction

command! Build call s:build()
nnoremap <silent><leader>b :Build<cr>
nnoremap <silent><leader>r :!./run.sh<cr>
