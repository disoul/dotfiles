" Vundle things
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

Plugin 'Valloric/YouCompleteMe'
Plugin 'fcitx.vim'
Plugin 'Emmet.vim'
Plugin 'Lokaltog/powerline'
Plugin 'altercation/vim-colors-solarized'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'myhere/vim-nodejs-complete'
Plugin 'pangloss/vim-javascript'
Plugin 'othree/javascript-libraries-syntax.vim'
Plugin 'matthewsimo/angular-vim-snippets'
Plugin 'scrooloose/syntastic'
Plugin 'burnettk/vim-angular'
Plugin 'klen/python-mode'
Plugin 'hynek/vim-python-pep8-indent'
Plugin 'Shutnik/jshint2.vim'

call vundle#end()
filetype plugin indent on

" general settings that'd make people happy
set modeline modelines=5
set mouse=a
set nu
set fileencodings=utf-8,euc-cn
" set smartindent

" referenced from yueyoum/dotfiles with some personal touch
set bs=indent,eol,start  " backspace
set tf  " ttyfast
set cc=79  " colorcolumn
set ts=4
set sw=4
set sts=4
set et

autocmd FileType json set ts=2 sw=2 sts=2
autocmd FileType html set ts=4 sw=4 sts=4
autocmd FileType javascript set ts=4 sw=4 sts=4
autocmd FileType css set ts=4 sw=4 sts=4
autocmd FileType scss set ts=4 sw=4 sts=4

" Powerline
set rtp+=~/.vim/bundle/powerline/powerline/bindings/vim
set laststatus=2

" YCM
let g:ycm_autoclose_preview_window_after_insertion=1

syntax on

" color
highlight ColorColumn ctermbg=234
set background=dark
let g:solarized_termtrans=1
colo solarized

" PythonMode
" Override go-to.definition key shortcut to Ctrl-]
let g:pymode_rope_goto_definition_bind = "<C-]>"
"
" " Override run current python file key shortcut to Ctrl-Shift-e
let g:pymode_run_bind = "<C-S-r>"
"
" " Override view python doc key shortcut to Ctrl-Shift-d
let g:pymode_doc_bind = "<C-S-d>"
