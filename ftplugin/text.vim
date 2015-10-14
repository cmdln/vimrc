" don't hard break text
setlocal tw=0
" keep soft breaks between words
setlocal linebreak
" turn list off as it interferes with soft wrapping
setlocal nolist
" turn off breaking when typing new text
setlocal formatoptions-=t
" turn off line width hint
setlocal colorcolumn=0

" narrow width for gui since text will softwrap based on width
if has("gui_running")
    " narrow the gui window for text wrangling
    setlocal columns=120
endif

" open full screen with macvim
if has("gui_macvim")
    set fuoptions=maxvert,maxhorz
    au GUIEnter * set fullscreen
endif
