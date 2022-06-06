" ===== Install vim-plug automatically. ===== "
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

" ===== What would I do without you. ===== "
Plug 'morhetz/gruvbox'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" ===== Search and replace. ===== "
Plug 'jremmen/vim-ripgrep'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" ===== Git ===== "
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'

" ===== Programing languages and frameworks. ===== "
Plug 'fatih/vim-go'
Plug 'posva/vim-vue'
Plug 'habamax/vim-godot'
Plug 'OmniSharp/omnisharp-vim'

" ===== Code completion. ===== "
Plug 'honza/vim-snippets'
Plug 'tpope/vim-surround'
Plug 'unblevable/quick-scope'

" ===== Flash Step ===== "
Plug 'machakann/vim-highlightedyank'

call plug#end()
