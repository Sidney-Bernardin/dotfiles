" ========== Install vim-plug automatically. ========== "
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif



" ========== Plugins. ========== "
call plug#begin('~/.vim/plugged')

" What would I do without you.
Plug 'morhetz/gruvbox'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Search and replace.
Plug 'jremmen/vim-ripgrep'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Git.
Plug 'tpope/vim-fugitive'

" Code completion.
Plug 'jiangmiao/auto-pairs'
Plug 'honza/vim-snippets'

" Golang.
Plug 'fatih/vim-go'

" Vue.
Plug 'posva/vim-vue'

" Godot.
Plug 'habamax/vim-godot'

" OmniSharp.
Plug 'OmniSharp/omnisharp-vim'

" Other.
Plug 'unblevable/quick-scope'
Plug 'vim-airline/vim-airline'
Plug 'machakann/vim-highlightedyank'

call plug#end()
