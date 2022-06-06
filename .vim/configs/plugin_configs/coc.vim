" ===== COC extensions. ===== "
let g:coc_global_extensions = ['coc-pairs', 'coc-go', 'coc-tsserver', 'coc-html', 'coc-css', 'coc-json', 'coc-emmet', 'coc-vetur', 'coc-godot', 'coc-pyright', 'coc-flutter', 'coc-snippets']

" ===== COC config. ===== "
let g:coc_snippet_next = '<tab>'

" ===== Basic COC shortcuts. ===== "
nmap <leader>rn <Plug>(coc-rename)
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" ===== Confirm completion with enter. ===== "
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" ===== Code actions. ===== "
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)
