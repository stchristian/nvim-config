syntax on
colorscheme codedark
set number
filetype indent on

" Set file search path to include current dir and subfolders
set path=.,,,$PWD/** " Problem: path is not uptaded when PWD changes
set wildignorecase
set wildignore=**/node_modules/*,**/.git/*

" Always show tabs
set showtabline=2

" Only one global status line
set laststatus=3

" Tab settings
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

" Set default windows split behaviour
set splitright
set splitbelow

" Coc extensions
let g:coc_global_extensions = ['coc-tsserver', 'coc-snippets', 'coc-pairs', 'coc-prettier']

command! -nargs=0 Prettier :CocCommand prettier.forceFormatDocument

source ./init/airline.vim

" Vim plug
" Neovim (Linux/macOS/Windows): stdpath('data') . '/plugged'

call plug#begin()

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } " Fuzzy finder
Plug 'junegunn/fzf.vim'
Plug 'kyazdani42/nvim-tree.lua' " File tree plugin
Plug 'kyazdani42/nvim-web-devicons' " File icons next to files in file tree
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'tpope/vim-fugitive' " Better git support also airline requires this to display git info in status line
Plug 'vim-airline/vim-airline' " Status line plugin
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'

call plug#end()

source ./init/nvim-tree.lua
source ./init/mappings.vim
source ./init/coc-nvim.vim
