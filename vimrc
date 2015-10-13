" set the directory where my vimrc git project is located
source ~/.vimrc_local

" source aux files also under git control
let oldwd = getcwd()
exec "cd " . vimrc_git
source vundle.vim
source java.vim
source javascript.vim
source markdown.vim
source text.vim
exec "cd " . oldwd

" turn on file type plugins
filetype plugin indent on
" turn off compatibility mode
set nocompatible
" turn on syntax support
syntax on

" it is a big fat key, after all
let mapleader = "\<Space>"

" change buffer behaviors to no longer require changes when hiding a buffer
set hidden

" look for vimrc in the current director as well as $MYVIMRC
set exrc
" make looking for local changes secure
set secure
" more secure
set modelines=0
" preserve some context
set scrolloff=3
" make the cursor a bit easier to follows
set cursorline
" make search work a bit more like tab completion in bash
set incsearch
set wildmode=longest:full
set wildmenu
" line break handling
set lbr
set sbr=+
" always on status line
set laststatus=2

" set up folding preferences
set fde=1
set fdm=syntax
" let backspace work more naturally
set backspace=start,indent,eol
" set a readable width
set textwidth=80
" favor modern encoding
set enc=utf-8
" more readable config for list mode
set listchars+=nbsp:¬,tab:»·,trail:·
set listchars-=eol:$
" add a hint for long lines
set colorcolumn=120
" smarter handling of case during search
set ignorecase
set smartcase
" disable outdated data loss protections
set nobackup
set noswapfile
" make pastemode more accessible
set pastetoggle=<F2>
" save when moving away
au FocusLost * :wa

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

" configure syntastic, advanced syntax checker, with some reasonable behaviors
"
" always stick detected errors in the location list
let g:syntastic_always_populate_loc_list = 1
" open but only when errors are detected; default closes when errors are cleared
" but doesn't open the list automatically
let g:syntastic_auto_loc_list = 1
" check when first opening a file
let g:syntastic_check_on_open = 1
" don't check on writing and quitting
let g:syntastic_check_on_wq = 0
" explicitly set the js checker to my preferred one
let g:syntastic_javascript_checkers = ['eslint']

" quickly clear Syntastic info
nmap <F4> :SyntasticReset<CR>
" toggle gundo's display
nmap <F5> :GundoToggle<CR>
" quickly toggle a right, vsplit for viewing, navigating whatever structure easy
" tags/tagbar can figure out for the current buffer
nmap <F9> :TagbarToggle<CR>
" quickly toggle a left, vsplit for an insanely powerful file explorer
nmap <F8> :NERDTreeToggle<CR>
" open tree to current buffer
nmap <S-F8> :NERDTreeFind<CR>

" use the silver searcher with Unite's async file recursion
let g:unite_source_rec_async_command = ['/opt/boxen/homebrew/bin/ag', '--follow', '--nocolor', '--nogroup', '--hidden', '-g', '']
" set default matcher in unite to fuzzy
call unite#filters#matcher_default#use(['matcher_fuzzy'])
" open Unite ready for recursively, fuzzy match files
nnoremap <Leader>f :Unite -start-insert file_rec/async:!<CR>

" open is OS X only, the closest equiv in line, xdg-open, doesn't allow an
" argument for speciying a particular app
if has('gui_macvim')
	""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
	" Open current file with app given
	""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
	function! s:OpenWith(appname)
		noautocmd silent execute "!open -a \"" . a:appname . "\" " . expand("%:p")
		if v:shell_error
			echohl Error
			echon "Problem opening the file."
			echohl Normal
		endif
	endfunction

	command! -bar -nargs=1 OpenWith call s:OpenWith(<f-args>)
endif

" make sure to set TERM to xterm-256color in terminal program or app
colorscheme solarized
