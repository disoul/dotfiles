"{vundle setup
  set nocompatible
  filetype off
  set rtp+=~/.vim/bundle/Vundle.vim
  "vim-go | go settings `go get -u github.com/golang/lint`
  set rtp+=$GOPATH/src/github.com/golang/lint/misc/vim
  call vundle#begin()
    Plugin 'gmarik/Vundle.vim'
    Plugin 'altercation/vim-colors-solarized'
    Plugin 'Raimondi/delimitMate'
    "Plugin 'Shougo/neocomplete.vim'
    Plugin 'Valloric/YouCompleteMe'
    Plugin 'Shougo/vimproc.vim'
    Plugin 'Valloric/MatchTagAlways'
    "Plugin 'vim-syntastic/syntastic'
    Plugin 'w0rp/ale'
    Plugin 'airblade/vim-gitgutter'
    Plugin 'bling/vim-airline'
    Plugin 'vim-airline/vim-airline-themes'
    Plugin 'dhruvasagar/vim-vinegar'
    Plugin 'docunext/closetag.vim'
    Plugin 'godlygeek/tabular'
    Plugin 'itchyny/calendar.vim'
    Plugin 'kshenoy/vim-signature'
    Plugin 'mattn/emmet-vim'
    Plugin 'mileszs/ack.vim'
    Plugin 'othree/javascript-libraries-syntax.vim'
    Plugin 'scrooloose/nerdtree'
    Plugin 'sheerun/vim-polyglot'
    Plugin 'tpope/vim-fugitive'
    Plugin 'Yggdroot/indentLine'
    Plugin 'pangloss/vim-javascript'
    Plugin 'mxw/vim-jsx'
    Plugin 'aperezdc/vim-template'
    Plugin 'othree/yajs'
    Plugin 'heavenshell/vim-jsdoc'
    Plugin 'michalliu/jsruntime.vim'
    Plugin 'michalliu/jsoncodecs.vim'
    Plugin 'michalliu/sourcebeautify.vim'
    Plugin 'fatih/vim-go'
    Plugin 'leafgarland/typescript-vim'
   "" Plugin 'flowtype/vim-flow'
    Plugin 'wakatime/vim-wakatime'
    Plugin 'tikhomirov/vim-glsl'
    Plugin 'chemzqm/wxapp.vim'
  call vundle#end()
"}

"{Basic settings
  set nospell
  set nu
  "set relativenumber
  set guifont=Source\ Code\ Pro\ for\ Powerline "make sure to escape the spaces in the name properly
  set ffs=unix,dos,mac
  set hlsearch
  set incsearch
  set ignorecase
  set smartcase
  set encoding=utf-8
  set termencoding=utf-8
  set fileencodings=utf-8,gbk,utf-16le,cp1252,iso-8859-15,ucs-bom
  set fileformats=unix,dos,mac
  set linespace=0             " No extra spaces between rows
  set showmatch               " Show matching brackets/parenthesis
  set confirm                 " Confirm before vim exit
  if has('clipboard')
    if has('unnamedplus')  " When possible use + register for copy-paste
      set clipboard=unnamed,unnamedplus
      "else
      "set clipboard+=unnamed
    endif
  endif
  set nobackup
  set noswapfile
  set nowritebackup
  set iskeyword-=_,.,=,-,:,
  set foldmethod=indent
  set tabstop=2  softtabstop=2 shiftwidth=2 expandtab
  set guifont=Source\ Code\ Pro\ for\ Powerline:h16 
  set autoread
  set wildignore=*.o,*~,*.pyc,*.swp,*.bak,*.class
  if has("win16") || has("win32")
    set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.DS_Store
  else
    set wildignore+=.git\*,.hg\*,.svn\*
  endif
  set lazyredraw      " don't update the display while executing macros
  set switchbuf=useopen           " reveal already opened files from the
                                  " quickfix window instead of opening new
                                  " buffers
  set wildmenu
  set copyindent
  set wildmode=list:longest,full
  set whichwrap=b,s,h,l,<,>,>h,[,]   " Backspace and cursor keys wrap too
  if !&scrolloff
    set scrolloff=1           " Minimum lines to keep above and below cursor
  endif
  if !&sidescrolloff
    set scrolloff=5
  endif
  set display+=lastline
  set nowrap      " Do not wrap long lines
  set backspace=eol,start,indent
  if has('syntax')
    syntax enable
  endif
  set textwidth=80
  let &colorcolumn=join(range(81,999),",")
  let &colorcolumn="80,".join(range(120,999),",")
  set colorcolumn=+1
  set autoindent
  set smartindent
  set smarttab
  set ruler
  if has("gui_macvim")            "autocmd GUIEnter * set fullscreen
    set fuoptions=maxvert,maxhorz
  endif
  set cursorcolumn
  set cursorline
  set autochdir
  set laststatus=2  " always show statusline
  set showtabline=2 " always show tabline
  set hidden
  " enables filetype based indentation
  " Enable file type detection.
  " Use the default filetype settings, so that mail gets 'tw' set to 72,
  " 'cindent' is on in C files, etc.
  " Also load indent files, to automatically do language-dependent indenting.
  filetype plugin indent on
  set noerrorbells novisualbell t_vb=
  set autowrite
  set autowriteall "Auto-write all file changes
  " autocompletion with dictionary help
  set dictionary+=/usr/share/dict/words
  set dictionary+=~/.vim/dict/
  set statusline+=%*
  set statusline+=%#warningmsg#
  filetype on
  set shortmess+=filmnrxoOtT          " Abbrev. of messages (avoids 'hit enter')
  set showmode                        " Display current mode
  set showcmd                         " Show partial commands in status line and
                                    " Selected characters/lines in visual mode
  set viewoptions=folds,options,cursor,unix,slash " Better Unix / Windows compatibility
  set virtualedit=onemore " used with caution of breaking plugins
  set completeopt=menuone,menu,preview,longest
  set tags=./tags;/,~/.vimtags
  " Make tags placed in .git/tags file available in all levels of a repository
  let gitroot = substitute(system('git rev-parse --show-toplevel'), '[\n\r]', '', 'g')
  if gitroot != ''
    let &tags = &tags . ',' . gitroot . '/.git/tags'
  endif
  " colorscheme PaperColor
  set t_Co=256

 "  highlight ColorColumn ctermbg=234
  set background=dark
  let g:solarized_termtrans=1
  syntax enable
  colorscheme solarized

  set nofoldenable                  " Auto fold code
  set foldlevel=1
  set foldlevelstart=99
  set nomodeline                  " disable mode lines (security measure)
  " allow mouse select and etc operation
  set mouse=a
  set history=1000
  " no annoying sound on errors
  set timeoutlen=500
  set formatoptions+=t
  if v:version > 703 || v:version == 703 && has("patch541")
    set formatoptions+=j " Delete comment chars when join comment lines
  endif
  set formatoptions-=l " wrap long lines
  set wrapmargin=2 " 2 chars wrap margin from the right window border, hard wrap
  "set conceallevel=0
  set list
  set guioptions=e "only show guitablabel
  "set guioptions=
  syntax on
  highlight CursorLine term=reverse
  highlight CursorColumn term=reverse
"}

"{Mappings
  let mapleader=','
  nnoremap <Leader>2 :set tabstop=2  softtabstop=2 shiftwidth=2<CR>
  nnoremap <Leader>4 :set tabstop=4  softtabstop=4 shiftwidth=4<CR>
  nnoremap <Leader>eg :e ++enc=gbk<CR>
  nnoremap <Leader>eu :e ++enc=utf8<CR>
  nnoremap <Leader>h :nohlsearch<CR>
  " Use <C-L> to clear the highlighting of :set hlsearch
  if maparg('<C-L>', 'n') ==# ''
    nnoremap <silent> <C-L> :nohlsearch<C-R>=has('diff')?'<Bar>diffupdate':''<CR><CR><C-L>
  endif
  nnoremap <leader>l :set list!<CR>
  nnoremap <leader>w :set wrap!<CR>
  nnoremap <leader>f :%!js-beautify -j -q -B -f -<CR>
  nnoremap <c-s> :w<CR>
  "noremap <Leader>W :w !sudo tee % > /dev/null
  " Quickly edit/reload the vimrc file
    nnoremap <leader>ev :tabe $MYVIMRC<CR>
    nnoremap <silent> <leader>sv :so $MYVIMRC<CR>
    nnoremap <space> za
    vnoremap <space> zf
  " tab switch key mappings
    " http://vim.wikia.com/wiki/Alternative_tab_navigation
    "nnoremap <A-1> 1gt
    "nnoremap <A-2> 2gt
    "nnoremap <A-3> 3gt
    "nnoremap <A-4> 4gt
    "nnoremap <A-5> 5gt
    "nnoremap <A-6> 6gt
    "nnoremap <A-7> 7gt
    "nnoremap <A-8> 8gt
    "nnoremap <A-9> 9gt
    "nnoremap <A-0> 10gt
  " map for xxd editing
    nnoremap <Leader>xd :%!xxd<CR>
    nnoremap <Leader>xr :%!xxd -r<CR>
    nnoremap <leader>t :tabe<cr>
    nnoremap <leader>tm :echo strftime('%c')<cr>
    nnoremap <leader>v :vnew<cr>
    nnoremap <leader>to :tabonly<cr>
    nnoremap <leader>x :q<cr>
    nnoremap <leader>tx :tabclose<cr>
    "nnoremap    <C-Tab>    :tabnext<CR>
    "imap   <C-Tab>    <C-O>:tabnext<CR>
    "map    <C-S-Tab>  :tabprev<CR>
    "imap   <C-S-Tab>  <C-O>:tabprev<CR>
  "Simplify help navigation
    "http://vim.wikia.com/wiki/Learn_to_use_help
    "Press Enter to jump to the subject (topic) under the cursor.
    "Press Backspace to return from the last jump.
    "Press s to find the next subject, or S to find the previous subject.
    "Press o to find the next option, or O to find the previous option.
    "nnoremap <buffer> <CR> <C-]>
    "nnoremap <buffer> <BS> <C-T>
    "nnoremap <buffer> o /'\l\{2,\}'<CR>
    "nnoremap <buffer> O ?'\l\{2,\}'<CR>
    "nnoremap <buffer> s /\|\zs\S\+\ze\|<CR>
    "nnoremap <buffer> S ?\|\zs\S\+\ze\|<CR>
"}

"{Plugin settings

  "bling/vim-airline
    if !exists('g:airline_symbols')
      let g:airline_symbols = {}
    endif
    "let g:airline_symbols.linenr = '⭡'
    let g:airline_symbols.paste = 'ρ'
    let g:airline_symbols.whitespace = 'Ξ'
    let g:airline_symbols.branch = ''
    let g:airline_symbols.readonly = ''
    let g:airline_symbols.linenr = ''
    let g:airline_symbols.branch = ''
    "

  "scrooloose/nerdtree
    nnoremap <leader>ne :NERDTreeFind<CR>
    nnoremap <leader>nt :NERDTreeToggle<CR>
    let g:NERDTreeShowLineNumbers=1
    let g:NERDTreeChDirMode=2
    let NERDTreeWinPos="left"


  "mhinz/vim-startify
    noremap <Leader>s :Startify<CR>
    let g:startify_list_order = [
          \ ['   Bookmarks'],     'bookmarks',
          \ ['   MRU'],           'files' ,
          \ ['   MRU '.getcwd()], 'dir',
          \ ['   Sessions'],      'sessions',
          \ ]
    let g:startify_bookmarks = [
          \ '~/projects/assets/daily.md',
          \ '~/projects/assets/',
          \ '~/downloads/',
          \ '~/projects/node/',
          \  '~/projects/daily/',
          \ '~/projects/daily/fe-learning/',
          \  '~/projects/assets/item-detail/',
          \ '~/projects/assets/noscripter.github.io/',
          \ '~/projects/assets/noscripter.github.io/_posts/',
          \ '~/projects/assets/noscripter.github.io/lab/',
          \  '~/projects/daily/fe-learning/playground/']
    let g:startify_change_to_dir          = 0
    let g:startify_enable_special         = 0
    let g:startify_files_number           = 8
    let g:startify_session_autoload       = 1
    let g:startify_session_delete_buffers = 1
    let g:startify_session_persistence    = 1
    let g:startify_use_env                = 1

  "CtrlP
  """""""""""""""""""""""""
    if exists(':CtrplP')
      let g:ctrlp_custom_ignore = {
        \ 'dir':  '\v[\/]\.(git|hg|svn)$',
        \ 'dir': 'node_modules\|bower_components',
        \ 'file': '\v\.(exe|so|dll)$',
        \ 'link': 'some_bad_symbolic_links',
        \ }
      " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
      " modify for spf13
      let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
      " ag is fast enough that CtrlP doesn't need to cache
      let g:ctrlp_use_caching = 0
    endif

  "mileszs/ack.vim
    " Use The Silver Searcher over grep, iff possible
    if executable('ag')
      " Use ag over grep
      set grepprg=ag\ --nogroup\ --nocolor
    endif

  "gitgutter
    let g:gitgutter_max_signs=900

  "neosnippet
    "disables all runtime snippets
    let g:neosnippet#disable_runtime_snippets = {
        \ '_' : 1
        \ }

  "SirVer/ultisnips
    "customize python and keymapping
    "ref:https://gist.github.com/lencioni/dff45cd3d1f0e5e23fe6
    "ref:https://stackoverflow.com/questions/14896327/ultisnips-and-youcompleteme
    let g:UltiSnipsUsePythonVersion     = 2
    let g:UltiSnipsExpandTrigger       = "<c-tab>"
    let g:UltiSnipsListSnippets        = "<c-l>"
    let g:UltiSnipsJumpForwardTrigger  = "<c-j>"
    let g:UltiSnipsJumpBackwardTrigger = "<c-k>"


  "othree/javascript-libraries-syntax.vim
    let g:used_javascript_libs = 'react,angularjs,flux,jquery,underscorce'

  "pangloss/vim-javascript
  
    let g:javascript_plugin_jsdoc      = 1
    "let g:javascript_conceal_function  = "ƒ"
    "let g:javascript_conceal_null      = "ø"
    "let g:javascript_conceal_this      = "@"
    "let g:javascript_conceal_return    = "⇚"
    "let g:javascript_conceal_undefined = "¿"
    "let g:javascript_conceal_NaN       = "ℕ"
    "let g:javascript_conceal_prototype = "¶"
    "let g:javascript_conceal_static    = "•"
    "let g:javascript_conceal_super     = "Ω"
    "let g:javascript_conceal_class     = "𝘾"
    "let g:javascript_conceal_noarg_arrow_function = "🞅"
    "let g:javascript_conceal_underscore_arrow_function = "🞅"

    let g:javascript_plugin_flow = 1


  "vim-airline/vim-airline-themes
    let g:airline_theme='solarized'
    let g:airline_powerline_fonts=1


  "Yggdroot/indentLine
    let g:indentLine_enabled=1
    let g:indentLine_char = '⋮'
    "let g:indentLine_conceallevel=0

  "mhinz/vim-grepper
    " Mimic :grep and make ag the default tool.
    let g:grepper = {
        \ 'tools': ['ag', 'git', 'grep'],
        \ 'open':  0,
        \ 'jump':  1,
        \ }

"}

"{helper functions
  " Set tabstop, softtabstop and shiftwidth to the same value
  command! -nargs=* Stab call Stab()
  function! Stab()
    let l:tabstop = 1 * input('set tabstop = softtabstop = shiftwidth = ')
    if l:tabstop > 0
      let &l:sts = l:tabstop
      let &l:ts = l:tabstop
      let &l:sw = l:tabstop
    endif
    call SummarizeTabs()
  endfunction

  function! SummarizeTabs()
    try
      echohl ModeMsg
      echon 'tabstop='.&l:ts
      echon ' shiftwidth='.&l:sw
      echon ' softtabstop='.&l:sts
      if &l:et
        echon ' expandtab'
      else
        echon ' noexpandtab'
      endif
    finally
      echohl None
    endtry
  endfunction

  function! GuiTabLabel()
    let label = ''
    let bufnrlist = tabpagebuflist(v:lnum)
    " Add '+' if one of the buffers in the tab page is modified
    for bufnr in bufnrlist
      if getbufvar(bufnr, "&modified")
        let label = '+'
        break
      endif
    endfor
    " Append the tab number
    let label .= v:lnum.': '
    " Append the buffer name
    let name = bufname(bufnrlist[tabpagewinnr(v:lnum) - 1])
    if name == ''
      " give a name to no-name documents
      if &buftype=='quickfix'
        let name = '[Quickfix List]'
      else
        let name = '[No Name]'
      endif
    else
      " get only the file name
      let name = fnamemodify(name,":t")
    endif
    let label .= name
    " Append the number of windows in the tab page
    let wincount = tabpagewinnr(v:lnum, '$')
    return label . '  [' . wincount . ']'
  endfunction
  function! SetTabLabel()
    set guitablabel=%{GuiTabLabel()}
  endfunction

  " http://vimdoc.sourceforge.net/htmldoc/gui.html
  "echom "May The FORCE be with U!"
  if exists("+showtabline")
    function! MyTabLine()
      let s = ''
      let t = tabpagenr()
      let i = 1
      while i <= tabpagenr('$')
        let buflist = tabpagebuflist(i)
        let winnr = tabpagewinnr(i)
        let s .= '%' . i . 'T'
        let s .= (i == t ? '%1*' : '%2*')
        let s .= ' '
        let s .= i . ':'
        let s .= ' %*'
        let s .= (i == t ? '%#TabLineSel#' : '%#TabLine#')
        let file = bufname(buflist[winnr - 1])
        let file = fnamemodify(file, ':p:t')
        if file == ''
          let file = '[No Name]'
        endif
        let s .= file
        let i = i + 1
      endwhile
      let s .= '%T%#TabLineFill#%='
      let s .= (tabpagenr('$') > 1 ? '%999XX' : 'X')
      return s
    endfunction
    set stal=2
    set tabline=%!MyTabLine()
  endif

  "http://vim.wikia.com/wiki/Show_tab_number_in_your_tab_line
  " set up tab tooltips with every buffer name
  function! GuiTabToolTip()
    let tip = ''
    let bufnrlist = tabpagebuflist(v:lnum)
    for bufnr in bufnrlist
      " separate buffer entries
      if tip != ''
        let tip .= " \n "
      endif
      " Add name of buffer
      let name = bufname(bufnr)
      " add modified/modifiable flags
      if getbufvar(bufnr, "&modified")
        let tip .= ' [+]'
      endif
    endfor
    return tip
  endfunction
  set guitabtooltip=%{GuiTabToolTip()}

  " url:http://vimcasts.org/episodes/tidying-whitespace/
  function! Preserve(command)
    " Preparation: save last search, and cursor position.
    let _s=@/
    let l = line(".")
    let c = col(".")
    " Do the business:
    execute a:command
    " Clean up: restore previous search history, and cursor position
    let @/=_s
    call cursor(l, c)
  endfunction
  nnoremap _$ :call Preserve("%s/\\s\\+$//e")<CR>
  nnoremap _= :call Preserve("normal gg=G")<CR>

  "Allow to toggle background
    function!  ToggleBG()
      let s:tbg = &background
      " Inversion
      if s:tbg == 'dark'
        set background=light
      else
        set background=dark
      endif
    endfunction
    noremap <leader>bg :call ToggleBG()<CR>
"}

"{auto commands
  " Return to last edit position when opening files (You want this!)
  autocmd BufReadPost *
       \ if line("'\"") > 0 && line("'\"") <= line("$") |
       \   exe "normal! g`\"" |
       \ endif
  autocmd! BufRead,BufNewFile *.markdown set filetype=mkd
  autocmd! BufRead,BufNewFile *.md       set filetype=mkd
  autocmd! BufRead,BufNewFile,BufReadPost *.snippets set filetype=snippets
  autocmd! BufRead,BufNewFile *.json set filetype=json
  autocmd! BufRead,BufNewFile *.ts set filetype=typescript
  autocmd BufNewFile,BufRead *.vm set filetype=html
  autocmd BufNewFile,BufRead *.html.twig set filetype=html.twig
  autocmd BufNewFile,BufRead *.conf set filetype=config
  au BufRead,BufNewFile *.scss set filetype=scss.css
  autocmd BufNewFile,BufRead *.vm set filetype=html
  autocmd BufNewFile,BufRead *.coffee set filetype=coffee
  autocmd FileType haskell setlocal commentstring=--\ %s
  autocmd BufNewFile,BufRead *.rss setfiletype xml
  autocmd FileType xhtml,xml ru ftplugin/html/autoclosetag.vim
  " Instead of reverting the cursor to the last position in the buffer, we
  " set it to the first line when editing a git commit message
  au FileType gitcommit au! BufEnter COMMIT_EDITMSG
        \ call setpos('.', [0, 1, 1, 0])
  au VimEnter * :call SetTabLabel()
  autocmd BufNewFile,BufReadPost *.md set filetype=markdown
  autocmd BufRead,BufNewFile *.json setf json
  autocmd BufNewFile,BufReadPost *.xtpl set filetype=html
  autocmd BufNewFile,BufRead *.vm set ft=velocity
  autocmd BufNewFile,BufRead *.xtpl set ft=html
  autocmd BufNewFile,BufRead *.ejs set ft=html
  autocmd FileType css set omnifunc=csscomplete#CompleteCSS
  autocmd FileType xtpl set ft=html
  autocmd BufNewFile,BufRead *.rss,*.atom setfiletype xml
  autocmd FocusGained, BufEnter * :silent! !
  autocmd FileType python syn keyword pythonDecorator True None False self
  autocmd BufNewFile,BufRead *.jinja set syntax=htmljinja
  autocmd BufNewFile,BufRead *.mako set ft=mako
  autocmd BufRead,BufNewFile *.md set filetype=markdown
  au! BufRead,BufNewFile *.bat
        \ if getline(1) =~ '--\*-Perl-\*--' | setf perl | endif
  autocmd WinEnter call SetTabLabel()
  autocmd BufEnter call SetTabLabel()
  "https://superuser.com/questions/195022/vim-how-to-synchronize-nerdtree-with-current-opened-tab-file-path
  if expand("%:p")
    autocmd BufEnter * lcd %:p:h
  endif
  "http://inlehmansterms.net/2014/09/04/sane-vim-working-directories/
  "http://vim.wikia.com/wiki/Set_working_directory_to_the_current_file
  autocmd BufEnter * silent! lcd %:p:h
  autocmd BufEnter * if expand("%:p:h") !~ '^/tmp' | silent! lcd %:p:h | endif
  let s:default_path = escape(&path, '\ ') " store default value of 'path'

  " Always add the current file's directory to the path and tags list if not
  " already there. Add it to the beginning to speed up searches.
  autocmd BufRead *
        \ let s:tempPath=escape(escape(expand("%:p:h"), ' '), '\ ') |
        \ exec "set path-=".s:tempPath |
        \ exec "set path-=".s:default_path |
        \ exec "set path^=".s:tempPath |
        \ exec "set path^=".s:default_path
  autocmd Filetype *
        \if &omnifunc == "" |
        \setlocal omnifunc=syntaxcomplete#Complete |
        \endif
  " Automatically open and close the popup menu / preview window
  au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif
  " Restore cursor position upon reopening files {{{
  autocmd BufReadPost *
      \ if &filetype != "gitcommit" && line("'\"") > 0 && line("'\"") <= line("$") |
      \   exe "normal! g`\"" |
      \ endif
  " }}}
  " gnuplot syntax highlighting
  au BufNewFile,BufRead *.plt,.gnuplot setf gnuplot
  " autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
  autocmd FileType ruby set dictionary+=~/.vim/dict/ruby.dict
  au FileType javascript set dictionary+=$HOME/.vim/dict/node.dict
"}
"

" JSDoc
let g:jsdoc_enable_es6=1
let g:jsdoc_allow_input_prompt=1
let g:jsdoc_input_description=1
let g:jsdoc_additional_descriptions=0
nmap <silent> <C-l> <Plug>(jsdoc)


" neocomplete
let g:neocomplete#enable_at_startup = 1

autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" Unite
nnoremap <C-U> :Unite

" vim-jsx
let g:jsx_ext_required = 0

" notab
autocmd FileType python set tabstop=4|set shiftwidth=4|set expandtab
autocmd FileType go set tabstop=2|set shiftwidth=2|set expandtab
set listchars=tab:▸\ ,eol:.

" flow
let g:flow#errjmp = 1
let g:flow#autoclose = 1
let g:flow#enable = 0

" ale
" Asynchronous Lint Engine (ALE)
" Limit linters used for JavaScript.
let g:ale_linters = {
\  'javascript': ['eslint', 'flow']
\}
highlight clear ALEErrorSign " otherwise uses error bg color (typically red)
highlight clear ALEWarningSign " otherwise uses error bg color (typically red)
let g:ale_sign_error = 'X' " could use emoji
let g:ale_sign_warning = '?' " could use emoji
let g:ale_statusline_format = ['X %d', '? %d', '']
" %linter% is the name of the linter that provided the message
" %s is the error or warning message
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
let g:airline#extensions#ale#enabled = 1
"let g:ale_javascript_eslint_use_global = 1
"let g:ale_javascript_eslint_executable = 1
""/Users/disoul/.nvm/versions/node/v7.10.0/bin/eslint
" Map keys to navigate between lines with errors and warnings.
nnoremap <leader>an :ALENextWrap<cr>
nnoremap <leader>ap :ALEPreviousWrap<cr>
