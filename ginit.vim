" to allow specific fonts for specific OSes
source ~/.config/nvim/glocal.vim

set lines=65
set columns=120
set background=dark
set guioptions-=r
set guioptions-=b
set guioptions-=T
set guioptions-=m
" set this here for graphical sessions since setting bg dark seems to reset,
" also set in vimrc for graphical sessions
hi CursorLine guibg=Grey10