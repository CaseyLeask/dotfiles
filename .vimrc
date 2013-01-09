set nocompatible
syntax enable
set encoding=utf-8
set showcmd                     " display incomplete commands
filetype plugin indent on       " load file type plugins + indentation
set ruler                       " Enabled display of line/col at the bottom

"" Whitespace
set nowrap                      " don't wrap lines
set tabstop=2 shiftwidth=2      " a tab is two spaces
set expandtab                   " use spaces, not tabs
set backspace=indent,eol,start  " backspace through everything in insert mode

"" Searching
set hlsearch                    " highlight matches
set incsearch                   " incremental searching
set ignorecase                  " searches are case insensitive...
set smartcase                   " ... unless they contain at least one capital letter
if !exists("autocommandsLoaded")
  let autocommandsLoaded = 1
  autocmd BufNewFile,BufRead Gemfile setlocal filetype=ruby
endif
call pathogen#infect() 
au BufNewFile,BufReadPost *.coffee setl shiftwidth=2 expandtab
