augroup MyAutoCmd

    " Automatically set read-only for files being edited elsewhere
	autocmd WinEnter,InsertLeave * set cursorline
	autocmd WinLeave,InsertEnter * set nocursorline

    " Automatically set read-only for files being edited elsewhere
    autocmd SwapExists * nested let v:swapchoice = 'o'

    " Check if file changed when its window is focus, more eager than 'autoread'
    autocmd WinEnter,FocusGained * checktime

    " Update filetype on save if empty
    autocmd BufWritePost * nested
    \ if &l:filetype ==# '' || exists('b:ftdetect')
    \ |   unlet! b:ftdetect
    \ |   filetype detect
    \ | endif

	autocmd Syntax * if 5000 < line('$') | syntax sync minlines=200 | endif

    autocmd BufWritePre *.js,*.jsx,*.less,*.css,*.html Neoformat

    autocmd FileType json syntax match Comment +\/\/.\+$+

    autocmd FileType json setlocal equalprg=python\ -c\ json.tool

    " Go (Google)
    autocmd FileType go let b:coc_pairs_disabled = ['<']

    " set filetypes as typescript && tsx
    autocmd BufNewFile,BufRead *.ts  set filetype=typescript
    autocmd BufNewFile,BufRead *.tsx set filetype=typescript.tsx

    " HTML (.gohtml and .tpl for server side)
    autocmd BufNewFile,BufRead *.html,*.htm,*.gohtml,*.tpl  setf html
    " Magit
    autocmd User VimagitEnterCommit startinsert

	" https://webpack.github.io/docs/webpack-dev-server.html#working-with-editors-ides-supporting-safe-write
	autocmd FileType css,javascript,jsx,javascript.jsx setlocal backupcopy=yes

    autocmd TabLeave * let g:lasttab = tabpagenr()

    autocmd FileType crontab setlocal nobackup nowritebackup

    autocmd FileType css setlocal equalprg=csstidy\ -\ --silent=true

    " https://webpack.github.io/docs/webpack-dev-server.html#working-with-editors-ides-supporting-safe-write
    autocmd FileType css,javascript,jsx,javascript.jsx
    \ setlocal backupcopy=yes
    \| setlocal equalprg=jslint

    autocmd FileType yaml.docker-compose setlocal expandtab

    autocmd FileType gitcommit setlocal spell

    autocmd FileType gitcommit,qfreplace setlocal nofoldenable

    autocmd FileType zsh setlocal foldenable foldmethod=marker

    autocmd FileType html
    \ setlocal path+=./;/
    \ | setlocal equalprg=tidy\ -i\ -q

    autocmd BufRead,BufNewFile *.markdown set filetype=markdown
    autocmd BufRead,BufNewFile *.md       set filetype=markdown
    autocmd FileType markdown setlocal wrap

    autocmd FileType apache setlocal path+=./;/

    autocmd FileType cam setlocal nonumber synmaxcol=10000

    autocmd FileType xml
    \ setlocal equalprg=xmllint\ --format\ --recover\ -\ 2>/dev/null

    autocmd BufRead,BufNewfile *.smali set filetype=smali

augroup END
