filetype plugin on
syntax on
packloadall

" ===== Use my basic config files. ===== "
source ~/.vim/configs/basic_configs/sets.vim
source ~/.vim/configs/basic_configs/remaps.vim
source ~/.vim/configs/basic_configs/netrw.vim

" ===== Use my plugin config files. ===== "
source ~/.vim/configs/plugin_configs/plugins.vim
source ~/.vim/configs/plugin_configs/vim-go.vim
source ~/.vim/configs/plugin_configs/fzf.vim
source ~/.vim/configs/plugin_configs/vim-highlightedyank.vim
source ~/.vim/configs/plugin_configs/coc.vim
source ~/.vim/configs/plugin_configs/vim-fugitive.vim
source ~/.vim/configs/plugin_configs/omnisharp.vim
source ~/.vim/configs/plugin_configs/vim-airline.vim

colorscheme gruvbox
