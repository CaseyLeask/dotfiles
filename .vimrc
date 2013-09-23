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
  autocmd BufNewFile,BufRead *.json setlocal filetype=javascript
  autocmd BufNewFile,BufRead *.less setlocal filetype=scss
  autocmd BufNewFile,BufRead *.coffee setlocal filetype=coffee
  au BufNewFile,BufReadPost *.coffee setl shiftwidth=2 expandtab
endif
execute pathogen#infect() 
syntax on
filetype plugin indent on

noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
