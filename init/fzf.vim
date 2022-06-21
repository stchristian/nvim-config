" Fzf file finder
" fd is required to list files for fzf
command! -bang -nargs=? -complete=dir Files
      \ call fzf#vim#files(<q-args>, fzf#vim#with_preview({'source': 'fd -E node_modules'}), <bang>0)
nmap <space>f <CMD>Files<CR>
nmap <space>b <CMD>Buffers<CR>

