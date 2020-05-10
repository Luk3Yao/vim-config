" Animate {{{
let g:animate#duration = 233.0
" }}}

" Remap arrows to resize
nnoremap <silent> <Up>    :call animate#window_delta_height(15)<CR>
nnoremap <silent> <Down>  :call animate#window_delta_height(-15)<CR>
nnoremap <silent> <Left>  :call animate#window_delta_width(30)<CR>
nnoremap <silent> <Right> :call animate#window_delta_width(-30)<CR>
