" configure airline, advanced status line plugin
let g:airline#extensions#tagbar#enabled = 1
let g:airline#extensions#tabline#enabled = 1
" these symbols rely on a patched powerline font being set either as gfn within
" .gvimrc or as the font for the given terminal program
let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''
let g:airline_theme='dark_minimal'
