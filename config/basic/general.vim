" General {{{
set mouse=nv                 " Disable mouse in command-line mode
set modeline                 " automatically setting options from modelines
set report=0                 " Don't report on line changes
set errorbells               " Trigger bell on error
set visualbell               " Use visual bell instead of beeping
set hidden                   " hide buffers when abandoned instead of unload
set fileformats=unix,dos,mac " Use Unix as the standard file type
set magic                    " For regular expressions turn magic on
set path=.,**                " Directories to search when using gf
set virtualedit=block        " Position cursor anywhere in visual block
set synmaxcol=1000           " Don't syntax highlight long lines
set formatoptions+=1         " Don't break lines after a one-letter word
set formatoptions-=t         " Don't auto-wrap text
if has('patch-7.3.541')
    set formatoptions+=j       " Remove comment leader when joining lines
endif

set encoding=UTF-8
" set langmenu=zh_CN.UTF-8
" language message zh_CN.UTF-8
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
set fileencoding=utf-8

" What to save for views:
set viewoptions-=options
set viewoptions+=slash,unix

" What to save in sessions:
set sessionoptions-=blank
set sessionoptions-=options
set sessionoptions-=globals
set sessionoptions-=folds
set sessionoptions-=help
set sessionoptions-=buffers
set sessionoptions+=tabpages

if has('mac')
    let g:clipboard = {
        \   'name': 'macOS-clipboard',
        \   'copy': {
        \      '+': 'pbcopy',
        \      '*': 'pbcopy',
        \    },
        \   'paste': {
        \      '+': 'pbpaste',
        \      '*': 'pbpaste',
        \   },
        \   'cache_enabled': 0,
        \ }
endif

if has('clipboard')
    set clipboard& clipboard+=unnamedplus
endif

" }}}


" Wildmenu {{{
" --------
if has('wildmenu')
    set nowildmenu
    set wildmode=list:longest,full
    set wildoptions=tagfile
    set wildignorecase
    set wildignore+=.git,.hg,.svn,.stversions,*.pyc,*.spl,*.o,*.out,*~,%*
    set wildignore+=*.jpg,*.jpeg,*.png,*.gif,*.zip,**/tmp/**,*.DS_Store
    set wildignore+=**/node_modules/**,**/bower_modules/**,*/.sass-cache/*
    set wildignore+=application/vendor/**,**/vendor/ckeditor/**,media/vendor/**
    set wildignore+=__pycache__,*.egg-info
endif

" }}}

" Timing {{{
" ------
set timeout ttimeout
set timeoutlen=750  " Time out on mappings
set updatetime=1000 " Idle time to write swap and trigger CursorHold

" Time out on key codes
set ttimeoutlen=10

" }}}

" Searching {{{
" ---------
set ignorecase      " Search ignoring case
set smartcase       " Keep case when searching with *
set infercase       " Adjust case in insert completion mode
set incsearch       " Incremental search
set hlsearch        " Highlight search results
set wrapscan        " Searches wrap around the end of the file
set showmatch       " Jump to matching bracket
set matchpairs+=<:> " Add HTML brackets to pair matching
set matchtime=1     " Tenths of a second to show the matching paren
set cpoptions-=m    " showmatch will wait 0.5s or until a char is typed
set grepprg=rg\ --vimgrep\ $*

" }}}

" Tabs and Indents {{{
" ----------------
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set smarttab
set autoindent
set smartindent
set shiftround
" }}}

" Behavior {{{
" --------
set nowrap                      " No wrap by default
set linebreak                   " Break long lines at 'breakat'
set nostartofline               " Cursor in same column for few commands
set whichwrap+=h,l,<,>,[,],~    " Move to following line on certain keys
set splitbelow splitright       " Splits open bottom right
set switchbuf=useopen,usetab    " Jump to the first open window in any tab
set switchbuf+=vsplit           " Switch buffer behavior to vsplit
set backspace=indent,eol,start  " Intuitive backspacing in insert mode
set diffopt=filler,iwhite       " Diff mode: show fillers, ignore whitespace
set showfulltag                 " Show tag and tidy search in completion
set complete=.                  " No wins, buffs, tags, include scanning
set completeopt=menuone         " Show menu even for one item
set completeopt+=noselect       " Do not select a match in the menu
set completefunc=emoji#complete
set completeopt+=longest,menu
set completeopt-=preview
if has('patch-7.4.775')
    set completeopt+=noinsert
endif

if has('patch-8.1.0360')
    set diffopt+=internal,algorithm:patience
endif

if exists('+inccommand')
    set inccommand=nosplit
endif

set autoread
set autowrite
set confirm
set splitbelow
set bsdir=buffer
if has('vim_starting')
	set encoding=UTF-8
	scriptencoding UTF-8
endif
set laststatus=2
set showtabline=2
set statusline=-        " hide file name in statusline
set fillchars+=vert:\|  " add a bar for vertical splits
if get(g:,'gruvbox_transp_bg',1)
 set fcs=eob:\           " hide ~
endif

if has('autocmd')
    " When editing a file, always jump to the last known cursor position.
    " Don't do it when the position is invalid or when inside an event handler
    autocmd BufReadPost *
    \ if &ft !~ '^git\c' && ! &diff && line("'\"") > 0 && line("'\"") <= line("$")
    \|   execute 'normal! g`"zvzz'
    \| endif

    " Reload vim config automatically
    " autocmd BufWritePost $VIM_PATH/{*.vim,*.yaml,vimrc} nested
	" 	\ source $MYVIMRC | redraw | silent doautocmd ColorScheme
endif

" auto switch im in macos
" com.apple.keylayout.ABC
" com.baidu.inputmethod.BaiduIM.pinyin
" com.baidu.inputmethod.BaiduIM.wubi
au InsertEnter * call system('issw com.baidu.inputmethod.BaiduIM.wubi')
au InsertLeave * call system('issw com.apple.keylayout.ABC')
" }}}

" Editor UI Appearance {{{
" --------------------
if has('termguicolors')
	set termguicolors
endif
set noshowmode          " Don't show mode in cmd window
set shortmess=aoOTI     " Shorten messages and don't show intro
set scrolloff=13        " Keep at least 2 lines above/below
set sidescrolloff=5     " Keep at least 5 lines left/right
set number              " Don't show line numbers
set relativenumber            " Show the relative numbers
set noruler             " Disable default status ruler
set list                " Show hidden characters

set showtabline=2       " Always show the tabs line
set winwidth=30         " Minimum width for active window
set winminwidth=10      " Minimum width for inactive windows
set winheight=1         " Minimum height for active window
set pumheight=15        " Pop-up menu's line height
set helpheight=12       " Minimum help window height
set previewheight=12    " Completion preview height

set noshowcmd           " Don't show command in status line
set cmdheight=2         " Height of the command line
set cmdwinheight=5      " Command-line lines
set noequalalways       " Don't resize windows on split or close
set laststatus=2        " Always show a status line
set colorcolumn=80      " Highlight the 80th character limit
set display=lastline

set signcolumn=yes
set list
set listchars=tab:»·,nbsp:+,trail:·,extends:→,precedes:←

" Do not display completion messages
" Patch: https://groups.google.com/forum/#!topic/vim_dev/WeBBjkXE8H8
if has('patch-7.4.314')
    set shortmess+=c
endif

" Do not display message when editing files
if has('patch-7.4.1570')
    set shortmess+=F
endif

" For snippet_complete marker
if has('conceal') && v:version >= 703
    set conceallevel=2 concealcursor=niv
endif

" }}}


" Vim Directories {{{
" ---------------
set undodir=~/.tmp/undo
set undofile swapfile nobackup
set directory=$DATA_PATH/swap//,$DATA_PATH,~/tmp,/var/tmp,/tmp
set undodir=$DATA_PATH/undo//,$DATA_PATH,~/tmp,/var/tmp,/tmp
set backupdir=$DATA_PATH/backup/,$DATA_PATH,~/tmp,/var/tmp,/tmp
set viewdir=$DATA_PATH/view/
set nospell spellfile=$VIM_PATH/spell/en.utf-8.add

" History saving
set history=1000
if has('nvim')
	set shada='300,<50,@100,s10,h
else
	set viminfo='300,<10,@50,h,n$DATA_PATH/viminfo
endif

" If sudo, disable vim swap/backup/undo/shada/viminfo writing
if $SUDO_USER !=# '' && $USER !=# $SUDO_USER
		\ && $HOME !=# expand('~'.$USER)
		\ && $HOME ==# expand('~'.$SUDO_USER)

	set noswapfile
	set nobackup
	set nowritebackup
	set noundofile
	if has('nvim')
		set shada="NONE"
	else
		set viminfo="NONE"
	endif
endif

" Secure sensitive information, disable backup files in temp directories
if exists('&backupskip')
	set backupskip+=/tmp/*,$TMPDIR/*,$TMP/*,$TEMP/*,*/shm/*,/private/var/*
	set backupskip+=.vault.vim
endif

" Disable swap/undo/viminfo/shada files in temp directories or shm
augroup MyAutoCmd
	autocmd!
	silent! autocmd BufNewFile,BufReadPre
		\ /tmp/*,$TMPDIR/*,$TMP/*,$TEMP/*,*/shm/*,/private/var/*,.vault.vim
		\ setlocal noswapfile noundofile nobackup nowritebackup viminfo= shada=
augroup END

" }}}

" Folds {{{
" -----

" FastFold
function! FoldText()
    let l:lpadding = &fdc
    redir => l:signs
        execute 'silent sign place buffer='.bufnr('%')
    redir End
    let l:lpadding += l:signs =~ 'id=' ? 2 : 0

    if exists("+relativenumber")
        if (&number)
            let l:lpadding += max([&numberwidth, strlen(line('$'))]) + 1
        elseif (&relativenumber)
            let l:lpadding += max([&numberwidth, strlen(v:foldstart - line('w0')), strlen(line('w$') - v:foldstart), strlen(v:foldstart)]) + 1
        endif
    else
        if (&number)
            let l:lpadding += max([&numberwidth, strlen(line('$'))]) + 1
        endif
    endif
    " expand tabs
    let l:start = substitute(getline(v:foldstart), '\t', repeat(' ', &tabstop), 'g')
    let l:end = substitute(substitute(getline(v:foldend), '\t', repeat(' ', &tabstop), 'g'), '^\s*', '', 'g')

    let l:info = ' (' . (v:foldend - v:foldstart) . ')'
    let l:infolen = strlen(substitute(l:info, '.', 'x', 'g'))
    let l:width = winwidth(0) - l:lpadding - l:infolen

    let l:separator = ' … '
    let l:separatorlen = strlen(substitute(l:separator, '.', 'x', 'g'))
    let l:start = strpart(l:start , 0, l:width - strlen(substitute(l:end, '.', 'x', 'g')) - l:separatorlen)
    let l:text = l:start . ' … ' . l:end

    return l:text . repeat(' ', l:width - strlen(substitute(l:text, ".", "x", "g"))) . l:info
endfunction
if has('folding')
	set foldenable
	set foldmethod=syntax
	set foldlevelstart=99
    set foldtext=FoldText()
endif

" }}}
