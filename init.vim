if empty(glob('~/.config/nvim/plugged/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/plugged/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.config/nvim/plugged')
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'tpope/vim-commentary'
Plug 'honza/vim-snippets'
Plug 'itchyny/lightline.vim'
Plug 'ap/vim-css-color'
Plug 'amadeus/vim-convert-color-to'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'romainl/vim-cool'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'

" Initialize plugin system
call plug#end()

"colorscheme dracula
"source $HOME/.config/nvim/plug-config/coc.vim
source $HOME/.config/nvim/general/settings.vim
source $HOME/.config/nvim/keys/mappings.vim
