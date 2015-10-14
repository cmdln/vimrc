" don't hard break text
autocmd FileType text set tw=0
" keep soft breaks between words
autocmd FileType text set linebreak
" turn list off as it interferes with soft wrapping
autocmd FileType text set nolist!
" pull the wrap margin in given my preference for wide terms and windows
autocmd FileType text set wrapmargin=20
" turn off breaking when typing new text
autocmd FileType text set formatoptions-=t
" turn off line width hint
autocmd FileType text set colorcolumn=0

" open full screen with macvim
if has("gui_macvim")
  set fuoptions=maxvert,maxhorz
  au GUIEnter * set fullscreen
endif

if has("gui_running")
    " narrow the gui window for text wrangling
    autocmd FileType text set columns=80
endif
