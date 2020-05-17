"Plugin key settings

" Coc {{{
if dein#tap('coc.nvim')
    " Using CocList
    " Show all diagnostics
    nnoremap <silent> <leader>cd  :<C-u>CocList diagnostics<cr>
    " Manage extensions
    nnoremap <silent> <leader>ce  :<C-u>CocList extensions<cr>
    " Show commands
    nnoremap <silent> <leader>cc  :<C-u>CocList commands<cr>
    " Find symbol of current document
    nnoremap <silent> <leader>co  :<C-u>CocList outline<cr>
    " Search workspace symbols
    nnoremap <silent> <leader>cs  :<C-u>CocList -I symbols<cr>
    " Do default action for next item.
    nnoremap <silent> <leader>cj  :<C-u>CocNext<CR>
    " Do default action for previous item.
    nnoremap <silent> <leader>ck  :<C-u>CocPrev<CR>
    " Resume latest coc list
    nnoremap <silent> <leader>cr  :<C-u>CocListResume<CR>
    " Use `[c` and `]c` for navigate diagnostics
    nmap <silent> ]c <Plug>(coc-diagnostic-prev)
    nmap <silent> [c <Plug>(coc-diagnostic-next)
    " Remap for rename current word
    nmap <leader>cn <Plug>(coc-rename)
    " Remap for format selected region
    vmap <leader>cf  <Plug>(coc-format-selected)
    nmap <leader>cf  <Plug>(coc-format-selected)
    " Remap for do codeAction of selected region, ex: `<leader>aap` for current paragraph
    xmap <leader>ca  <Plug>(coc-codeaction-selected)
    nmap <leader>ca  <Plug>(coc-codeaction-selected)
    " Remap for do codeAction of current line
    nmap <leader>ac  <Plug>(coc-codeaction)
    " Fix autofix problem of current line
    nmap <leader>qf  <Plug>(coc-fix-current)
    " Remap keys for gotos
    nmap <silent> gd <Plug>(coc-definition)
    nmap <silent> gy <Plug>(coc-type-definition)
    nmap <silent> gi <Plug>(coc-implementation)
    nmap <silent> gr <Plug>(coc-references)
    " Use K for show documentation in preview window
    nnoremap <silent> K :call <sid>show_documentation()<cr>
    " use <c-space> for trigger completion.
    inoremap <silent><expr> <c-space> coc#refresh()
    nmap [g <Plug>(coc-git-prevchunk)
    nmap ]g <Plug>(coc-git-nextchunk)
    " show chunk diff at current position
    nmap gs <Plug>(coc-git-chunkinfo) " show commit contains current position
    nmap gm <Plug>(coc-git-commit)
    nnoremap <silent> <leader>cg  :<C-u>CocList --normal gstatus<CR>
    " float window scroll
    nnoremap <expr><C-f> coc#util#has_float() ? coc#util#float_scroll(1) : "\<C-f>"
    nnoremap <expr><C-b> coc#util#has_float() ? coc#util#float_scroll(0) : "\<C-b>"
    " multiple cursors session
    nmap <silent> <C-c> <Plug>(coc-cursors-position)
    nmap <silent> <C-d> <Plug>(coc-cursors-word)
    xmap <silent> <C-d> <Plug>(coc-cursors-range)
    nnoremap <silent> <leader>cm ::CocSearch -w
    nnoremap <silent> <leader>cw ::CocSearch
    " use normal command like `<leader>xi(`
    nmap <leader>x  <Plug>(coc-cursors-operator)
    function! s:show_documentation()
        if (index(['vim','help'], &filetype) >= 0)
            execute 'h '.expand('<cword>')
        else
            call CocAction('doHover')
        endif
    endfunction
    " coc-explorer
    noremap <silent> <leader>j :execute 'CocCommand explorer' .
        \ ' --toggle' .
        \ ' --sources=buffer+,file+' .
        \ ' --file-columns=git,selection,icon,clip,indent,filename,size ' . expand('%:p:h')<CR>
endif
" }}}

if dein#tap('defx.nvim')
    nnoremap <silent> <Leader>e
        \ :<C-u>Defx -resume -toggle -buffer-name=tab`tabpagenr()`<CR>
        \ :<C-u>call animate#window_percent_width(-30)<CR>
    nnoremap <silent> <Leader>F
        \ :<C-u>Defx -resume -toggle -search=`expand('%:p')` `getcwd()`<CR>
endif

if dein#tap('tagbar')
    nnoremap <silent> <Leader>o
        \ :<C-u>TagbarOpenAutoClose<CR>
        \ :<C-u>call animate#window_percent_width(-37)<CR>
    " Also use h/l to open/close folds
    let g:tagbar_map_closefold = ['h', '-', 'zc']
    let g:tagbar_map_openfold = ['l', '+', 'zo']
endif

if dein#tap('vim-sidemenu')
    nmap <Leader>l <Plug>(sidemenu)
    xmap <Leader>l <Plug>(sidemenu-visual)
endif

if dein#tap('vim-which-key')
    nnoremap <silent> <leader>      :<c-u>WhichKey '<Space>'<CR>
    nnoremap <silent> <localleader> :<c-u>WhichKey  ';'<CR>
    nnoremap <silent>[              :<c-u>WhichKey  '['<CR>
    nnoremap <silent>]              :<c-u>WhichKey  ']'<CR>
endif

