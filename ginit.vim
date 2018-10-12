" to allow specific fonts for specific OSes
source ~/.config/nvim/glocal.vim

set lines=65
set columns=120
set guioptions-=r
set guioptions-=b
set guioptions-=T
set guioptions-=m

" from https://stackoverflow.com/a/51424640
let s:fontsize = 11
function! AdjustFontSize(amount)
  let s:fontsize = s:fontsize+a:amount
  :execute "GuiFont! DejaVu Sans Mono:h" . s:fontsize
endfunction

noremap <C-ScrollWheelUp> :call AdjustFontSize(1)<CR>
noremap <C-ScrollWheelDown> :call AdjustFontSize(-1)<CR>
inoremap <C-ScrollWheelUp> <Esc>:call AdjustFontSize(1)<CR>a
inoremap <C-ScrollWheelDown> <Esc>:call AdjustFontSize(-1)<CR>a

