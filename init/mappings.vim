" Key mappings

let mapleader=","

" Paste 
nnoremap <C-p> "+p

" Open fzf
nnoremap <leader> :Files<CR>

" Edit the vim configuration file, reload vimrc
nnoremap <silent> <F1> :vsp $MYVIMRC<CR>
nnoremap <F2> :so $MYVIMRC<CR>

" Fzf file finder
nmap <leader>p <CMD>Files<CR>

" Shortcuts for buffer manipulation
nnoremap <Leader>l :ls<CR>
nmap <tab> <Plug>AirlineSelectNextTab
nmap <S-tab> <Plug>AirlineSelectPrevTab
nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>7 <Plug>AirlineSelectTab7
nmap <leader>8 <Plug>AirlineSelectTab8
nmap <leader>9 <Plug>AirlineSelectTab9
nmap <leader>0 <Plug>AirlineSelectTab0

" Move current line
nnoremap - :move .+1<CR>==
nnoremap _ :move .-2<CR>==

" Needed to navigate in help files
nnoremap <C-J> <C-]>

" Remap some navigation keys because Mac's dead keys suck
" noremap § ^
" noremap ' g_
" noremap 1 $

" Nvimtree

nnoremap <silent> <C-n> :NvimTreeToggle<CR>
nnoremap <silent> <leader>r :NvimTreeRefresh<CR>
nnoremap <leader>n :NvimTreeFindFile<CR>
" More available functions:
" NvimTreeOpen
" NvimTreeClose
" NvimTreeFocus
" NvimTreeFindFileToggle
" NvimTreeResize
" NvimTreeCollapse
" NvimTreeCollapseKeepBuffers


" a list of groups can be found at `:help nvim_tree_highlight`
" end of Nvimtree mappings
