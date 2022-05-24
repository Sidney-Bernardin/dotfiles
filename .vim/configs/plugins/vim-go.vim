" ========== Vim Go configuration. ========== "

" Let coc handle this functionality.
let g:go_def_mapping_enabled = 0

" Auto import.
let g:go_fmt_command = "goimports"

" Go info.
autocmd FileType go nmap <leader>i  <Plug>(go-info)

" GoDecls remap.
autocmd FileType go nmap <leader>G :GoDecls<CR>
autocmd FileType go nmap <leader>D :GoDeclsDir<CR>

" Quick compile.
autocmd FileType go nmap <leader>B  <Plug>(go-build)
autocmd FileType go nmap <leader>r  <Plug>(go-run)

" Error checking.
autocmd FileType go nmap <leader>e :GoErrCheck<CR>

" Unit testing.
autocmd FileType go nmap <leader>t  <Plug>(go-test)
autocmd FileType go nmap <Leader>c  <Plug>(go-coverage-toggle)

" Alternate files.
autocmd Filetype go command! -bang A call go#alternate#Switch(<bang>0, 'edit')
autocmd Filetype go command! -bang AV call go#alternate#Switch(<bang>0, 'vsplit')
autocmd Filetype go command! -bang AS call go#alternate#Switch(<bang>0, 'split')
autocmd Filetype go command! -bang AT call go#alternate#Switch(<bang>0, 'tabe')
