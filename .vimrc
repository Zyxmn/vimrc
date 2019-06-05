" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" List vim plugins here
Plug 'https://github.com/tpope/vim-salve.git'
Plug 'https://github.com/tpope/vim-projectionist.git'
Plug 'https://github.com/tpope/vim-dispatch.git'
Plug 'https://tpope.io/vim/fireplace.git'
Plug 'https://github.com/tpope/vim-fugitive.git'

" Initialize plugin system
call plug#end()
