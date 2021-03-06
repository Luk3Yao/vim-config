let g:buffet_show_index = 0
let g:buffet_tab_icon = "\uf00a"
let g:buffet_left_trunc_icon = "\uf0a8 (●‑●‑)"
let g:buffet_right_trunc_icon = "(‑●‑●) \uf0a9"
let g:buffet_separator = "▞"
function! g:BuffetSetCustomColors()
    hi! BuffetCurrentBuffer cterm=NONE ctermbg=106 ctermfg=8 guibg=#5C4D7A guifg=#FFFFFF
    hi! BuffetTrunc cterm=bold ctermbg=66 ctermfg=8 guibg=#FABD2E guifg=#FFFFFF
    hi! BuffetBuffer cterm=NONE ctermbg=239 ctermfg=8 guibg=#373433 guifg=#FABD2E
    hi! BuffetTab cterm=NONE ctermbg=66 ctermfg=8 guibg=#373433 guifg=#FFFFFF
    hi! BuffetActiveBuffer cterm=NONE ctermbg=10 ctermfg=239 guibg=#FABD2E guifg=#FFFFFF
endfunction

nmap <leader>1 <Plug>BuffetSwitch(1)
nmap <leader>2 <Plug>BuffetSwitch(2)
nmap <leader>3 <Plug>BuffetSwitch(3)
nmap <leader>4 <Plug>BuffetSwitch(4)
nmap <leader>5 <Plug>BuffetSwitch(5)
nmap <leader>6 <Plug>BuffetSwitch(6)
nmap <leader>7 <Plug>BuffetSwitch(7)
nmap <leader>8 <Plug>BuffetSwitch(8)
nmap <leader>9 <Plug>BuffetSwitch(9)
nmap <leader>0 <Plug>BuffetSwitch(10)

noremap <Tab> :bn<CR>
noremap <S-Tab> :bp<CR>
noremap <Leader><Tab> :Bw<CR>
noremap <Leader><S-Tab> :Bw!<CR>
