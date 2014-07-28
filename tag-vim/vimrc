scriptencoding utf-8
set encoding=utf-8

set nocompatible

runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()

colorscheme solarized		" Solarized color scheme
syntax enable			" Syntax highlighting

filetype plugin indent on

set number			" Show line numbers
set laststatus=2		" Show a status bar all the time
set showmatch			" highlight matching [{()}]
set autoread			" reload files changed oustide of vim
set tabstop=4      " \t is shown as 4 spaces
set backspace=indent,eol,start

if has('gui_running')
    set background=light
else
    set background=dark
endif

let g:lightline = {
      \ 'colorscheme': 'solarized',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'fugitive', 'readonly', 'filename' ] ]
      \   },
      \ 'component_function': {
      \   'fugitive': 'MyFugitive',
      \   'readonly': 'MyReadonly',
      \   },
      \ 'separator': { 'left': '', 'right': '' },
      \ 'subseparator': { 'left': '|', 'right': '|' }
      \ }

set noshowmode

function! MyFugitive()
  if exists("*fugitive#head")
    let _ = fugitive#head()
    return strlen(_) ? _ : ''
  endif
  return ''
endfunction

function! MyReadonly()
  if &filetype == "help"
    return "?"
  elseif &readonly
    return "x"
  else
    return ""
  endif
endfunction

" Local config
if filereadable($HOME . "/.vimrc.local")
  source ~/.vimrc.local
endif
