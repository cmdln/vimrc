" set the directory where my vimrc git project is located
source ~/.config/nvim/local.vim

" it is a big fat key, after all
" N.B. should come before plugins and plugin specific settings
let mapleader = "\<Space>"

" source aux files also under git control
let oldwd = getcwd()
exec "cd " . vimrc_git
source plug.vim
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
colorscheme desert
