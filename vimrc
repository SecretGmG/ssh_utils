" Set cursor shape in insert mode
if exists('&t_SI') && exists('&t_EI')
  let &t_SI = "\e[6 q"   " cursor block/beam: 6=bar, 2=underline, 0=block
  let &t_EI = "\e[2 q"   " back to normal block in normal mode
endif

set backspace=indent,eol,start   " backspace works naturally
set showcmd                      " shows incomplete commands in bottom-right
set showmode                     " shows -- INSERT -- in status line

" Line numbers & current line
set number                        " line numbers
set relativenumber                " relative line numbers for jumps
set numberwidth=5                 " small gap between numbers and text
set cursorline                     " highlight current line

" Faint colors for line numbers and cursorline
hi LineNr ctermfg=240 guifg=#888888 " fainter line numbers
hi CursorLine cterm=none ctermbg=236 guibg=#2a2a2a " faint highlight, no underline

set hlsearch                      " highlight search results
set incsearch                     " incremental search
set ignorecase smartcase          " smarter search

set undofile                       " persistent undo across sessions
set undodir=~/.vim/undo           " store undo files here

set expandtab                      " use spaces instead of tabs
set shiftwidth=4                   " 4 spaces per indent
set softtabstop=4

syntax on                          " colored syntax
filetype plugin indent on          " auto indentation rules
set mouse=a                         " optional, allows mouse in terminal
