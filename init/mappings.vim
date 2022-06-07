" Key mappings

let mapleader=","

" Paste 
nnoremap <C-p> "+p<CR>

" Edit the vim configuration file, reload vimrc
nnoremap <silent> <F1> :vsp $MYVIMRC<CR>
nnoremap <F2> :so $MYVIMRC<CR>

" Fzf file finder
nmap <leader>p <CMD>Files<CR>

" Shortcuts for buffer manipulation
nnoremap <Leader>l :ls<CR>
nnoremap <tab> :bn<CR>
nnoremap <space><tab> :bp<CR>
nnoremap <Leader>g :e#<CR>
nnoremap <Leader>1 :1b<CR>
nnoremap <Leader>2 :2b<CR>
nnoremap <Leader>3 :3b<CR>
nnoremap <Leader>4 :4b<CR>
nnoremap <Leader>5 :5b<CR>
nnoremap <Leader>6 :6b<CR>
nnoremap <Leader>7 :7b<CR>
nnoremap <Leader>8 :8b<CR>
nnoremap <Leader>9 :9b<CR>
nnoremap <Leader>0 :10b<CR>

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
