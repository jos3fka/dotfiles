nnoremap <C-k> :h <C-r>=expand("<cword>")<CR><CR>
nnoremap <silent> <C-n> :enew<cr>

vnoremap <leader>64 c<c-r>=system('base64 --decode', @")<cr><esc>
