" Vim airline configuration

let g:airline_powerline_fonts = 1
" Enable airline's tabline
" Tabs will appear for each loaded buffer
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline#extensions#tabline#tab_nr_type = 1 " Display number of tab
let g:airline#extensions#tabline#buffer_idx_mode = 1 " Display indices
let g:airline#extensions#wordcount#enabled = 0
" let g:airline#extensions#tabline#show_tab_count = 0 
