function! CompileMarkdown() abort
    :only
    let md_file = expand('%:p')
    let pdf_file = expand('%:p:r') . '.pdf'
    call system('pandoc ' . md_file . ' -f gfm -V linkcolor:blue -V geometry:a4paper -V geometry:margin=2cm -V mainfont="DejaVu Sans" -V monofont="DejaVu Sans Mono" --pdf-engine=xelatex -o ' . pdf_file)
    call TermPDF(pdf_file)
endfunction

augroup Markdown
    autocmd!
    autocmd FileType markdown autocmd BufWritePost <buffer> call CompileMarkdown()
    autocmd FileType markdown autocmd BufDelete <buffer> call TermPDFClose()
augroup end

let g:termpdf_lastcalled = 0
function! TermPDF(file) abort
    " Implement some basic throttling
    let time = str2float(reltimestr(reltime())) * 1000.0
    if time - g:termpdf_lastcalled > 1000
        call system('kitty @ set-background-opacity 1.0')
        call system('kitty @ kitten termpdf.py ' . a:file)
        let g:termpdf_lastcalled = time
    endif
endfunction

" Vimtex {{{
let g:vimtex_view_general_callback = 'VimtexCallback'
let g:vimtex_view_automatic = 0

function! VimtexCallback(status) abort
    if a:status
        call TermPDF(b:vimtex.out())
    endif
endfunction

augroup VimtexTest
    autocmd!
    autocmd! User VimtexEventCompileStopped call TermPDFClose()
    autocmd FileType tex autocmd BufDelete <buffer> call TermPDFClose()
augroup end
" }}}
