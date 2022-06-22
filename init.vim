syntax on
set relativenumber
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
let g:coc_global_extensions = ['coc-tsserver', 'coc-snippets', 'coc-pairs', 'coc-eslint']

let g:prettier#exec_cmd_async = 1 " Run prettier async
" Function to source init files from the init directory
function SourceLocal(filename)
  exec 'source ' . stdpath('config') . '/init/' . a:filename 
endfunction

call SourceLocal("airline.vim")

" Vim plug
" Neovim (Linux/macOS/Windows): stdpath('data') . '/plugged'

call plug#begin()

" Vim prettier integration by the Prettier team
Plug 'prettier/vim-prettier', { 'do': 'yarn install --frozen-lockfile --production' }
Plug 'vim-scripts/ScrollColors' " Preview color schemes using the :SCROLLS command 
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } " Fuzzy finder
Plug 'junegunn/fzf.vim'
Plug 'kyazdani42/nvim-tree.lua' " File tree plugin
Plug 'kyazdani42/nvim-web-devicons' " File icons next to files in file tree
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'tpope/vim-fugitive' " Better git support also airline requires this to display git info in status line
Plug 'vim-airline/vim-airline' " Status line plugin
Plug 'vim-airline/vim-airline-themes'
Plug 'mlaursen/vim-react-snippets'
Plug 'ryanoasis/vim-devicons'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'morhetz/gruvbox' 

call plug#end()

" Settings that depend on the plugins
let g:airline_section_z = airline#section#create(['linenr', 'maxlinenr'])
colorscheme gruvbox

call SourceLocal("nvim-tree.lua")
call SourceLocal("mappings.vim")
call SourceLocal("coc-nvim.vim")
call SourceLocal("fzf.vim")
