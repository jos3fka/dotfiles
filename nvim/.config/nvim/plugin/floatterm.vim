nnoremap   <silent>   <leader>ta    :FloatermNew<CR>
tnoremap   <silent>   <leader>ta    <C-\><C-n>:FloatermNew<CR>
nnoremap   <silent>   <leader>th    :FloatermPrev<CR>
tnoremap   <silent>   <leader>th    <C-\><C-n>:FloatermPrev<CR>
nnoremap   <silent>   <leader>tl    :FloatermNext<CR>
tnoremap   <silent>   <leader>tl    <C-\><C-n>:FloatermNext<CR>
nnoremap   <silent>   <leader>tt   :FloatermToggle<CR>
tnoremap   <silent>   <leader>tt   <C-\><C-n>:FloatermToggle<CR>

tnoremap   <silent>   <leader>tq   <c-\><c-n>:FloatermKill<CR>
nnoremap   <silent>   <leader>th   :FloatermNew --cwd=<C-r>=expand('%:p:h')<CR><CR>


nnoremap <leader>fm :FloatermNew --autoclose=2 fmux<CR>
nnoremap <silent>   <leader>tv   :FloatermNew! --cwd=~/.local/share/nvim/ vim<CR>
nnoremap <silent>   <leader>ti   :FloatermNew! git-quick-stats -T<CR>
