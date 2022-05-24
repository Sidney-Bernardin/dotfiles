" ========== Remaps. ========== "
"
" Leader-key!
let mapleader=" "

" Quick save.
noremap <leader>s :w<CR>

" Buffer jumping.
nnoremap <C-N> :bnext<CR>
nnoremap <C-P> :bprev<CR>

" Window jumping.
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>

" Window resize.
nnoremap <silent><leader>+ :vertical resize =5<CR>
nnoremap <silent><leader>- :vertical resize -5<CR>

" Show registers.
nnoremap <leader>r :reg<CR>

" Move line up or down.
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

" Greatest remap ever.
vnoremap <leader>p "_dP

" Quickfix list.
nnoremap <C-j> :cnext<CR>
nnoremap <C-k> :cprev<CR>

" Nice...
inoremap {<cr> {<cr>}<c-o>O

" Center screen.
nnoremap G Gzz

" Undo break points.
inoremap , ,<c-g>u
inoremap . .<c-g>u

" Jumplist mutations.
nnoremap <expr> k (v:count > 5 ? "m'" . v:count : "") . 'k'
nnoremap <expr> j (v:count > 5 ? "m'" . v:count : "") . 'j'
