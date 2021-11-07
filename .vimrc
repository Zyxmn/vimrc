" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" List vim plugins here
Plug 'https://tpope.io/vim/fireplace.git'
Plug 'https://github.com/tpope/vim-fugitive.git'
Plug 'https://github.com/tpope/vim-classpath.git'
Plug 'https://github.com/mileszs/ack.vim.git'
Plug 'sheerun/vim-polyglot' " syntax highlighting for multiple languages
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim' " fuzzy file finder

" Initialize plugin system
call plug#end()

" Remove trailing whitespaces on save
autocmd BufWritePre * %s/\s\+$//e

" Show line number
set number

" Do not close buffer when you move to a new one
" This way you can undo changes if you revisit the buffer
set hidden

" Map fzf Gfiles to ctrl-p
nnoremap <C-p> :GFiles<Cr>

" Map ripgrep to ctrl-g
nnoremap <C-g> :Rg<Cr>

" WSL yank support
let s:clip = '/mnt/c/Windows/System32/clip.exe'  " change this path according to your mount point
if executable(s:clip)
    augroup WSLYank
        autocmd!
        autocmd TextYankPost * if v:event.operator ==# 'y' | call system(s:clip, @0) | endif
    augroup END
endif
