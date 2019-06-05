" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" List vim plugins here
Plug 'tpope/vim-salve.git'
Plug 'tpope/vim-projectionist.git'
Plug 'tpope/vim-dispatch.git'
Plug 'tpope/vim-fireplace.git'
Plug 'tpope/vim-fugitive.git'

" Initialize plugin system
call plug#end()
