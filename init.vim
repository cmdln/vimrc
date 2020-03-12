" set the directory where my vimrc git project is located
source ~/.config/nvim/local.vim

" it is a big fat key, after all
" N.B. should come before plugins and plugin specific settings
let mapleader = "\<Space>"

" source aux files also under git control
let oldwd = getcwd()
exec "cd " . vimrc_git
source plug.vim
source ncm2.vim
source airline.vim
source syntastic.vim
source fzf.vim
source mapping.vim
source jsonnet.vim
source racer.vim
source lsp.vim
source autoformat.vim
exec "cd " . oldwd

" set up a line number on the current line but relative above and below to help
" with motion commands
set number
set relativenumber

" even with the nice space/tab autodetect, prefer 4 for tab stops
" but let file type specifics override (for instance a setting of 2 for markdown
set tabstop=4
" default to folding on syntax
set foldmethod=syntax
" set a readable width
set textwidth=80
" make white space visible, where that matters
set list!
" except for help
autocmd FileType help setlocal nolist
" set up folding preferences
set fde=1
" vim's spelling is smart enough for code, to only check comments
set spell
" add a hint for long lines
set colorcolumn=120
" default to expanding tabs, I'm not insane
set expandtab

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
set linebreak
set showbreak=+
" always on status line
set laststatus=2

" let backspace work more naturally
set backspace=start,indent,eol
" favor modern encoding
set enc=utf-8
" more readable config for list mode
set listchars+=nbsp:¬,tab:»·,trail:·
set listchars-=eol:$
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

" make sure to set TERM to xterm-256color in terminal program or app
colorscheme breezy
set background=light
set termguicolors

" ensure autoread works, to detect file changes outside the editor
set autoread
au CursorHold * checktime

" keep nvim from resetting font back to default from terminal config
set guicursor=

set guioptions-=r
set guioptions-=b
set guioptions-=T
set guioptions-=m

set gfn=DejaVu\ Sans\ Mono\ for\ Powerline:h11
" from https://stackoverflow.com/a/51424640
let s:fontsize = 10
function! AdjustFontSize(amount)
  let s:fontsize = s:fontsize+a:amount
  :execute "set gfn=DejaVu\\ Sans\\ Mono\\ for\\ Powerline:h" . s:fontsize
endfunction

noremap <C-Up> :call AdjustFontSize(1)<CR>
noremap <C-Down> :call AdjustFontSize(-1)<CR>
inoremap <C-Up> <Esc>:call AdjustFontSize(1)<CR>a
inoremap <C-Down> <Esc>:call AdjustFontSize(-1)<CR>a

" widen the default display of the taskwarrior plugin to make the description
" wrap less
let g:task_rc_override = 'rc.defaultwidth=120'

" override the default location of vimwiki and change to markdown
let g:vimwiki_list = [{'path': '~/Documents/Wiki', 'syntax': 'markdown', 'ext': '.md'}]
let g:vimwiki_dir_link = 'index'
