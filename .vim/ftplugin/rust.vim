compiler cargo

function! s:cargo_build()
    make build
    cwindow
endfunction
function! s:cargo_run()
    make run
    cwindow
endfunction

command! CargoBuild call s:cargo_build()
command! CargoRun call s:cargo_run()

nnoremap <silent><leader>b :CargoBuild<cr>
nnoremap <silent><leader>r :CargoRun<cr>

colorscheme nord
AirlineTheme nord
