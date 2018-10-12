" set a smaller indent
setlocal ts=2

" and set up the buffer just like a text file
let oldwd = getcwd()
exec "cd ~/.config/nvim/ftplugin"
source text.vim
exec "cd " . oldwd
