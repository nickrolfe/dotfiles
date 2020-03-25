compiler cargo

function! s:my_cargo_build()
    make build
    cwindow
endfunction
function! s:my_cargo_run()
    make run
    cwindow
endfunction

command! CargoBuild call s:my_cargo_build()
command! CargoRun call s:my_cargo_run()

nnoremap <silent><leader>b :CargoBuild<cr>
nnoremap <silent><leader>r :CargoRun<cr>

colorscheme nord
AirlineTheme nord
