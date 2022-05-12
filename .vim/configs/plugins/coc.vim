let g:coc_global_extensions = [ 'coc-go', 'coc-tsserver', 'coc-html', 'coc-css', 'coc-json', 'coc-emmet', 'coc-vetur', 'coc-godot', 'coc-pyright' ]

" Coc snippets.
let g:coc_snippet_next = '<tab>'

" Remap keys for gotos.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Confirm completion with enter.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
