" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" List vim plugins here
Plug 'https://tpope.io/vim/fireplace.git'
Plug 'https://github.com/tpope/vim-fugitive.git'
Plug 'https://github.com/tpope/vim-classpath.git'
Plug 'https://github.com/mileszs/ack.vim.git'


" Initialize plugin system
call plug#end()

" Remove trailing whitespaces on save
autocmd BufWritePre * %s/\s\+$//e

" Show line number
set number
